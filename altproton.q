[QueryItem="get-anfFacts"]
PREFIX data: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT ?food ?nutrient ?v ?u WHERE {
    {
        SELECT ?a WHERE {
            ?a a altproton:anfFact .
        } LIMIT 100
    }
    ?a altproton:hasFoodProduct ?f ;
       altproton:hasQualityAspect ?n ;
       altproton:hasNumericalValue ?v ;
       altproton:hasUnit ?u .

	?f rdfs:label ?food.
	?n rdfs:label ?nutrient.
}
[QueryItem="get-ncf"]
PREFIX data: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/dcf_data#>
PREFIX rdfs: <http://www.w3.org/2000/01/rdf-schema#>
PREFIX altproton: <http://www.semanticweb.org/d.rastogi/ontologies/2024/1/altproton#>

SELECT ?food ?nutrient ?v ?u WHERE {
    {
        SELECT ?a WHERE {
            ?a a altproton:nutritionalCompositionFacts .
        } LIMIT 100
    }
    ?a altproton:hasFoodProduct ?f ;
       altproton:hasQualityAspect ?n ;
       altproton:hasNumericalValue ?v ;
       altproton:hasUnit ?u .
	
}