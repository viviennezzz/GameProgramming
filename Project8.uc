class Project8 extends KActor placeable;

simulated function PostBeginPlay() {
    local Project8 Discoball;
    local int n;
    n = Rand(4)+1;
    foreach DynamicActors(class'Project8', Discoball)
    {
        if(n>0)
        {
            Discoball.SetHidden(True);
            n--;
        }
    }
}
