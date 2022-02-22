// CENTRALITY --> HARMONIC CENTRALITY

CALL gds.alpha.closeness.harmonic.stream({
  nodeProjection: 'CITY',
  relationshipProjection: 'ROAD'
})
YIELD nodeId, centrality
RETURN gds.util.asNode(nodeId).name AS city, centrality
ORDER BY centrality DESC;
