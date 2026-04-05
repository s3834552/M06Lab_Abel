/*Jordan Abel*/

Proc Reg Data=Model Plots=(Criteria SBC); 
   Id Month; 
   /*Forward selection*/ 
   Model CPI = Furniture_Home_Improvement Travel_including_Leisure            Eating_out Entertainment Grocery Education                Communication Clothing_and_shopping  
Spend_save_quaterly_ratio 
         / Selection=Forward Details=All; 
    
/*Backward selection*/    
Model CPI = Furniture_Home_Improvement Travel_including_Leisure            Eating_out Entertainment Grocery Education                Communication Clothing_and_shopping  
Spend_save_quaterly_ratio 
         / Selection=Backward Details=All; 
 
   /*Maxr*/ 
   Model CPI = Furniture_Home_Improvement Travel_including_Leisure            Eating_out Entertainment Grocery Education                Communication Clothing_and_shopping  
Spend_save_quaterly_ratio 
         / Selection=Maxr Details=All; 
Run; 