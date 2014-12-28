if(actFinder==1)
{
ringChain++;
if (ringChain >= ringAmount)
{
    
    var rDistance = random_range(500,1000);
    for (var i=0; i < ringAmount ;i++)
    {
       
        var ringType = random(5);
        var randomPlacement = random_range(96,576);
        if (background_hspeed[0] < -50)
        {
            if(ringType <=3)
            {
               instance_create ((1020+(rDistance*i)),randomPlacement,ringBackObj);
               instance_create ((1020+(rDistance*i)),randomPlacement,ringForObj);
            }
            else
            {
              instance_create ((1020+(rDistance*i)),randomPlacement,slowRingBackObj);
              instance_create ((1020+(rDistance*i)),randomPlacement,slowRingForObj);  
            }
        }
        
        else
        {
        
            if(ringType <=4)
            {
                instance_create ((1020+(rDistance*i)),randomPlacement,ringBackObj);
                instance_create ((1020+(rDistance*i)),randomPlacement,ringForObj);
            }
            else 
            {
                instance_create ((1020+(rDistance*i)),randomPlacement,slowRingBackObj);
                instance_create ((1020+(rDistance*i)),randomPlacement,slowRingForObj);  
            }
        
        
        }
    }
    ringChain = 0;
}
}
else if (actFinder==2)
{

ringChain++;
if (ringChain >= ringAmount)
{
    
    var rDistance = random_range(600,1200);
    for (var i=0; i < ringAmount ;i++)
    {
       
        var ringType = random(5);
        var randomPlacement = random_range(70,(room_width-70));
        if (background_hspeed[0] < -50)
        {
            if(ringType <=3)
            {
               instance_create (randomPlacement,( -(rDistance*i)),RCage);
            }
            else
            { 
              instance_create (randomPlacement,(-(rDistance*i)),Rcage2); 
            }
        }
        
        else
        {
        
            if(ringType <=4)
            {
                instance_create (randomPlacement,(-(rDistance*i)),RCage);
            }
            else 
            {
                instance_create (randomPlacement,(-(rDistance*i)),Rcage2);  
            }
        
        
        }
    }
    ringForObj.image_angle = 90;
    ringBackObj.image_angle = 90;
    slowRingBackObj.image_angle = 90;
    slowRingForObj.image_angle = 90;
    ringChain = 0;
}

}
