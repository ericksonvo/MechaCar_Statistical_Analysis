# MechaCar_Statistical_Analysis
  In this analysis we are helping the auto company AutosRU on their newest prototype, MechaCar. They are having issues with production and is holding back their manafacturing team. So, we are helping Jeremy at AutoRU to help review the production data to get more information to help the manufacturing team. In order to help the manufacturing team we will perform multiple linear regression analysis to predict the mpg, use summary statistics on PSI of suspension coils, run t-tests to determine if manufacturing lots are different from the mean population. Also design a statistical study against other competitor vehicle brands  vs MechaCar. 

## Linear Regression to Predict MPG
### MPG vs Vehicle Length
![mpg_vs_vehicle_length](https://user-images.githubusercontent.com/117749494/225117444-823d16de-b0d1-42e0-90fd-c8bd061b6999.png)
### MPG vs Vehicle Weight
![mpg_vs_vehicle_weight](https://user-images.githubusercontent.com/117749494/225117453-1a698119-6830-4e69-939d-ea4c39733cd0.png)
### MPG vs Spoiler Angle
![mpg_vs_spoiler_angle](https://user-images.githubusercontent.com/117749494/225117466-58e36abb-3997-4534-977d-462cd3239a67.png)
### MPG vs Ground Clearance
![mpg_vs_ground_clearance](https://user-images.githubusercontent.com/117749494/225117479-b073c7da-4a92-4915-929a-dc75512a4ecc.png)
### MPG vs AWD
![mpg_vs_awd](https://user-images.githubusercontent.com/117749494/225117516-4e294593-1217-4871-adf5-2e428ea7e5fb.png)
## MPG vs All Variables
![mpg_vs_all](https://user-images.githubusercontent.com/117749494/225117602-74f07e33-873a-4366-8cf4-3bc59e5c874c.png)
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset? 
Looking at the linear regression models above we see that vehicle length and ground clearance provided a non-random amount of variance
because if we look at their p-values they were less that 0.05 so its enough evidence to reject our null hypothesis. 

### Is the slope of the linear model considered to be zero? Why or why not?
The slope of our linear model is not considered to be zero because if it were to be zero we would have a flat line in our graph. However, If we look at the graph
for MPG vs All Variables we see that there is a slope slightly treding upwards showing that there is a small positive correlation.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The data provided in our linear regression model provides good insights on th MechaCar prototypes. We now know that vehicle weight and ground clearance gives us good mpg. however, seeing that others have a random variance we can use the data to help with the MechaCar.  Also, if we look at the R-Squared values they are 0.7149 and the adjusted is 0.6825 showing that there is a strong correlation. 
## Summary Statistics on Suspension Coils
### Total Summary for Suspension Coil
![summary_total](https://user-images.githubusercontent.com/117749494/225117629-02bbe623-0ee6-45d3-9dbd-6da0911f278c.png)

### Lot 1 - 3 Summary for Suspension Coil
![summary_lot](https://user-images.githubusercontent.com/117749494/225117646-7f8d8b48-876a-49f4-a360-e291eb795a3e.png)
### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
When we are looking at the variance for suspension coils for all lots the variance was 62.29356. This shows that it meets the requirement for not exceeding 100 pounds per square inch. However, when we look at the individual lots we see that Lot 1 with a variance of 0.979 and Lot 2 with a variance of 7.469 meets the requirements. But when we look at Lot 3 its variance is 170.286 which exceeds the 100 pounds per square inch. So, as a whole they meet the requirements but when we look at the lots individually Lot 3, needs some work.

## T-Tests on Suspension Coils

![t_test_all](https://user-images.githubusercontent.com/117749494/225500905-67775b6f-1c29-456a-9b0d-722ed5346527.png)

![t_test_lot1](https://user-images.githubusercontent.com/117749494/225117729-d1532cbb-2272-4234-9564-ab111e59f6bf.png)

![t_test_lot2](https://user-images.githubusercontent.com/117749494/225117735-4dde8e69-69ed-4256-9bfd-f74c74027376.png)

![t_test_lot3](https://user-images.githubusercontent.com/117749494/225117744-ca083557-fc62-495f-a60b-bb6b0bd6690a.png)
### test
## Study Design: MechaCar vs Competition
