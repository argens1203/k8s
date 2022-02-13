helm install mygraph https://github.com/neo4j-contrib/neo4j-helm/releases/download/4.4.3/neo4j-4.4.3.tgz --set acceptLicenseAgreement=yes --set neo4jPassword=password --set core.numberOfServers=3 --set readReplica.numberOfServers=1

kubectl run -it --rm --image neo4j:4.4.4 cypher-shell -- cypher-shell -a bolt://mygraph-neo4j.default.svc.cluster.local

username=neo4j
password=password
