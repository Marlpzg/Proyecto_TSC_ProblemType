*GenData(1)
*Set Cond Dirichlet_A *nodes
*Set var NDA=CondNumEntities(int)
*Set Cond Dirichlet_G *nodes
*Set var NDG=CondNumEntities(int)
*npoin *nelem *NDA *NDG

Coordinates
*set elems(all)
*loop nodes
*NodesNum *NodesCoord(1,real) *NodesCoord(2,real) *NodesCoord(3,real)
*end nodes
EndCoordinates

Elements
*loop elems
*ElemsNum *ElemsConec
*end elems
EndElements

Dirichlet_A
*Set Cond Dirichlet_A *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(a,real)
*end nodes
EndDirichlet

Dirichlet_G
*Set Cond Dirichlet_G *nodes
*loop nodes *OnlyInCond
*NodesNum *cond(g,real)
*end nodes
EndDirichlet