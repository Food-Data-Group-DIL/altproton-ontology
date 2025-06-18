[QueryItem="get-anfFacts"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT ?food ?nutrient ?amount ?unit WHERE {
    
       ?a a altproton:anfFact ;
       
	altproton:hasFoodProduct <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/FOF000169>;
       	altproton:hasQualityAspect ?n;
       	altproton:hasNumericalValue ?amount ;
       	altproton:hasUnit ?unit .
	
	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/FOF000169> rdfs:label ?food.
	?n rdfs:label ?nutrient.
}
[QueryItem="get-ncf"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT (COUNT(*) AS ?count) WHERE {
    
       ?a a altproton:nutritionalCompositionFacts ;
       
	altproton:hasFoodProduct <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642>;
       	altproton:hasQualityAspect ?nutrient;
       	altproton:hasNumericalValue ?amount ;
       	altproton:hasUnit ?unit .

	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642> rdfs:label ?food.
	 FILTER(?amount != '0')
}
[QueryItem="relations"]
PREFIX data: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

ask
{
	?a a altproton:chickpea.
	?a altproton:hasGeneralIdentification ?b.
	minus {
	?b a altproton:plantBased.}
}
[QueryItem="proteinSource and origins"]
PREFIX data: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

ASK {
    ?foodMaterial a altproton:harvestedFoodMaterial.
    FILTER NOT EXISTS { 
        ?foodMaterial altproton:derivesFrom ?someFoodSource.
    }
}
[QueryItem="getEIfacts"]
PREFIX data: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

select ?a ?f ?c
where {
	?a a altproton:activity;
	rdfs:label ?f;
	altproton:has ?b.
	?b rdfs:label ?c.
}
[QueryItem="1.1-1.3"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT ?food ?nutrient ?amount ?unit WHERE {
    
       ?a a altproton:nutritionalCompositionFacts ;
       
	altproton:hasFoodProduct <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642>;
       	altproton:hasQualityAspect <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#nutrients/N004>;
       	altproton:hasNumericalValue ?amount ;
       	altproton:hasUnit ?unit .
	
	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642> rdfs:label ?food.
	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#nutrients/N004> rdfs:label ?nutrient.
}
[QueryItem="1.5"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT (COUNT(*) AS ?count) WHERE {
    
       ?a a altproton:nutritionalCompositionFacts ;
       
	altproton:hasFoodProduct <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642>;
       	altproton:hasQualityAspect ?nutrient;
       	altproton:hasNumericalValue ?amount ;
       	altproton:hasUnit ?unit .

	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642> rdfs:label ?food.
	 FILTER(?amount != '0')
}
[QueryItem="1.4"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT (COUNT(*) AS ?count) WHERE {
    
       ?a a altproton:nutritionalCompositionFacts ;
       
	altproton:hasFoodProduct <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642>;
       	altproton:hasQualityAspect ?nutrient;
       	altproton:hasNumericalValue ?amount ;
       	altproton:hasUnit ?unit .

	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/SWF000642> rdfs:label ?food.
}
[QueryItem="3.1-3.3"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

select ?activity ?food ?referenceUnit
where {
	
	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#activity/DILA000011> altproton:has ?f;
		rdfs:label ?activity;
		 altproton:referenceUnit ?referenceUnit.
	?f rdfs:label ?food.
}
[QueryItem="2"]
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT ?foodProduct ?environmental_indicator ?value ?unit ?sd ?method WHERE {
    
       ?a a altproton:environmentalImpactFacts ;
       	altproton:hasProduct <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/GLF000001>;
	altproton:hasEnvironmentalIndicator ?i;
	 altproton:hasNumericalValue ?value;
	 altproton:hasUnit ?unit;

	 altproton:hasStandardDeviation ?sd;
	 altproton:hasAnalysisMethod ?method.
	<http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#food_products/GLF000001> rdfs:label ?foodProduct.
	?i rdfs:label ?environmental_indicator.
	filter (?environmental_indicator = "Climate change"^^xsd:string)
}