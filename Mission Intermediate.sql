SELECT * 
FROM `mission-503507.Mission_Intermediate.SuryaHub`
where Gender ='Male';


SELECT count(*) as Total_transaksi_Perempuan
FROM `mission-503507.Mission_Intermediate.SuryaHub`
where Gender = 'Female';


SELECT Location, count(DISTINCT Customer_ID) as Total_customers 
FROM `mission-503507.Mission_Intermediate.SuryaHub`
group by Location
order by Total_customers DESC
Limit 5;


SELECT Discount_Used, count(*) as total 
FROM `mission-503507.Mission_Intermediate.SuryaHub`
where Brand_Loyalty = 5
group by Discount_Used;


SELECT Purchase_Intent, avg(Purchase_Amount) as avg_amount, avg(Frequency_of_Purchase) as avg_frequency  
FROM `mission-503507.Mission_Intermediate.SuryaHub`
group by Purchase_Intent
order by avg_amount desc;


SELECT Purchase_Channel,avg(Frequency_of_Purchase) as avg_frequency, avg(Purchase_Amount) as avg_amount 
FROM `mission-503507.Mission_Intermediate.SuryaHub`
group by Purchase_Channel
order by avg_frequency desc;


SELECT Customer_Loyalty_Program_Member,avg(Frequency_of_Purchase) as avg_frequency, avg(Purchase_Amount) as avg_amount 
FROM `mission-503507.Mission_Intermediate.SuryaHub`
group by Customer_Loyalty_Program_Member;


select * from `mission-503507.Mission_Intermediate.SuryaHub`;


SELECT Customer_ID,
sum(Purchase_Amount) as total_spent, max(Location) as Location, max(Purchase_Channel) as Channel, max(Brand_Loyalty) as Brand_Loyalty
FROM `mission-503507.Mission_Intermediate.SuryaHub`
Group by Customer_ID
order by total_spent desc
limit 10;


SELECT Customer_ID, Location, Purchase_Channel, Brand_Loyalty,count(Customer_ID) as duplikat
FROM `mission-503507.Mission_Intermediate.SuryaHub`
group by Customer_ID,Location,Purchase_Channel,Brand_Loyalty
order by duplikat desc;


SELECT Customer_ID,
sum(Purchase_Amount) over(partition by Customer_ID) as total_spent, Location, Purchase_Channel, Brand_Loyalty
FROM `mission-503507.Mission_Intermediate.SuryaHub`
order by total_spent desc
limit 10;
