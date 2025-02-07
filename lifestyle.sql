--To Create a New Database

--create database Life_style

select * from lifestyle_data


--Q1 To Find Total Number of Participant's

select distinct(count(ParticipantID)) as Total_Number_of_Participents from lifestyle_data

--Q2 To Find Number of participants Age Group

select age, count(Age)as Number_of_Age from lifestyle_data group by age order by age desc

--Q3 To Find Number of Participants According to Their Location Type

select Location, count(ParticipantID) as Number_of_Participants from lifestyle_data

group by Location order by Location desc

--Q4 To Find Participants DietType According to their age

select DietType, Age,count(Age) as Number_of_Age from lifestyle_data
group by DietType,Age order by Number_of_Age desc

--Q5 To Find Participants DietType According to their Location

select DietType, Location,count(Location) as Number_of_Location from lifestyle_data
group by DietType,Location order by Number_of_Location desc


--Q6 Number Of Participants According to their Local Food Frequency

select LocalFoodFrequency,count(Location) as Number_of_Participants from lifestyle_data 
group by LocalFoodFrequency order by Number_of_Participants desc


--Q7 Number of participants according to their Transportation Mode

select TransportationMode,count(ParticipantID) as Number_of_Participants from lifestyle_data
group by TransportationMode 

--Q8 Number of participants according to their Energy Source

select EnergySource,count(ParticipantID) as Number_of_Participants from lifestyle_data
group by EnergySource 

--Q9 Number of participants According to their hometype 

select HomeType,count(HomeType) as Number_of_Participants from lifestyle_data
group by HomeType

--Q10 Clothing Frequency of Participants

select ClothingFrequency,count(ClothingFrequency) as Number_of_Frequency from lifestyle_data
group by ClothingFrequency

--Q11 Number of Sustainable Brands True or False

select SustainableBrands,count( SustainableBrands) as Number_of_Brands from lifestyle_data
where SustainableBrands =1 group by SustainableBrands

select SustainableBrands,count( SustainableBrands) as Number_of_Brands from lifestyle_data
where SustainableBrands =0 group by SustainableBrands

--Q12 Number of Environmental Awareness 

select distinct(count(EnvironmentalAwareness))as Number_of_Awarenwss,EnvironmentalAwareness from lifestyle_data 
group by EnvironmentalAwareness

--Q13 Number Of Involvement According to community Location

select CommunityInvolvement,count(Location) as Number_of_Involvement from lifestyle_data
group by CommunityInvolvement


--Q14 Number of Participants According To Gender

select Gender,count(ParticipantID) as Number_of_Participants from lifestyle_data
group by Gender

--Q15 Using Plastic Products According to Location 

select UsingPlasticProducts,count(Location) as Number_of_Plastic_Users from lifestyle_data
group by UsingPlasticProducts


--Q16 Disposal Methods

select distinct(count(DisposalMethods)) as Number_of_Disposal_Methods,DisposalMethods from lifestyle_data
group by DisposalMethods

--Q17 Physical Activities According to Location

select distinct(count(Location)) as Number_of_Activities,PhysicalActivities from lifestyle_data
group by PhysicalActivities

--Q18 Rating By Physical Activities

select distinct(count(Rating))as Number_of_Ratings,PhysicalActivities from lifestyle_data
group by PhysicalActivities order by Number_of_Ratings desc

--Q19 To Find Average Monthly Electricity Consumption

select Location,avg(MonthlyElectricityConsumption) as Avg_ElectricityConsumption from lifestyle_data
group by Location

--Q20 To Find Average Monthly Water Consumption


select Location,avg(MonthlyWaterConsumption) as Avg_WaterConsumption from lifestyle_data
group by Location