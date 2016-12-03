class Project9 extends Actor placeable;



event Touch(Actor Other, PrimitiveComponent OtherComp, vector HitLocation, vector HitNormal)
{
  
    if(Pawn(Other) != none)
    {
        Destroy();
    }

}

defaultproperties
{
    bCollideActors=True
    Begin Object Class=DynamicLightEnvironmentComponent Name=MyLightEnvironment
        bEnabled=TRUE
    End Object
    Components.Add(MyLightEnvironment)
    Begin Object Class=StaticMeshComponent Name=PickupMesh
        StaticMesh=StaticMesh'DiscoPackage.DiscoGroup.DiscoBall'
        Materials(0)=Material'EditorMaterials.WidgetMaterial_Y'
        LightEnvironment=MyLightEnvironment
        Scale3D=(X=0.25,Y=0.25,Z=0.25)
    End Object
    Components.Add(PickupMesh)
    Begin Object Class=CylinderComponent Name=CollisionCylinder
        CollisionRadius=16.0
        CollisionHeight=16.0
        BlockNonZeroExtent=true
        BlockZeroExtent=true
        BlockActors=true
        CollideActors=true
    End Object
    CollisionComponent=CollisionCylinder
    Components.Add(CollisionCylinder)
}



