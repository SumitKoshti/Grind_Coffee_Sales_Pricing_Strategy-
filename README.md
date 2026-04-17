# Grind_Coffee_Sales_Pricing_Strategy-
🎯 Project Objective: To analyze the decline in gross profit margins across the product portfolio using 2023–2025 data, identify low-margin products and key cost drivers, and recommend data-driven pricing and portfolio strategies to improve overall profitability.

Task for Analysis:
- Identify all products with a Gross Margin % (GMP) below 30% in Q3 2025.
- Create a dashboard showing Year-over-Year GMP, Revenue by Category, Product, and Region.
- Provide clear, data-backed recommendations on which items require a price increase or discontinuation.

Overview Report :

![See Dashboard](OverviewReport.jpg)


[See Full Dashboard Here!](https://app.powerbi.com/view?r=eyJrIjoiNzNjZDU5MzctODM1OC00NDExLWJhMmMtNDYyZWQwODJkNTUwIiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)

🔧 Project Process -->

- Dataset creation:
1. Multiple raw sales datasets were provided in separate Excel files, each containing different aspects of business data (orders, products, customers, etc.).
2. All Excel files were first imported into a SQL environment as individual tables for further processing.
3. Data cleaning steps were performed, including handling missing values, correcting data types, and removing duplicates.
4. Common keys (such as Product ID, Order ID, and Customer ID) were identified to establish relationships between tables.
5. SQL joins (INNER JOIN, LEFT JOIN) were used to merge multiple tables and create a unified dataset.
6. Common Table Expressions (CTEs) were utilized to simplify complex transformations and improve query readability.
7. Filters and conditions were applied to ensure only relevant and accurate data was included.
8. The final transformed dataset was validated for consistency and accuracy.
9. This final dataset was then used for dashboard creation and further analysis in Power BI.

🛠️ Tools used -
- Mysql : 
1. Database creation
2. Table Creation & Dataset Import
3. Data Checkup
4. Data Cleanup
5. Final dataset creation

- Power BI :
1. Integrated with mysql
2. Import final dataset through sql quries
3. Data modeling
4. Dax for Mesures creation
5. Dashboard building : Overview (Revenue), Gross Margin %, Pricing Report

- Microsoft word :
Created detailed report to present valueable insights and recommendations for pricing strategy.

📊 Insights & Recommendations :
1. Several products in Q3 2025 such as Minimalist Keychain, Chemex Filters, and Logo Hoodie have extremely low margins (~12%), indicating that current pricing is not sufficient to cover rising costs.

2. Prices of these low-margin products should be increased by approximately 10–15% to improve profitability and bring margins closer to or above 30%.

3. Products like Gooseneck Electric Kettle, Ceramic Mug, and Pour-Over Starter Kit have margins between 25–29%, so a smaller price increase of 5–8% can help push them above the acceptable threshold.

4. Minimalist Keychain and Logo Hoodie should be closely monitored, and if margins do not improve after pricing or cost optimization, they should be considered for discontinuation.

5. The business should focus more on high-performing and high-margin products (such as brewing equipment) to improve overall profitability.

6. Subscription-based offerings should be expanded (e.g., filters or coffee refills) to create stable, recurring revenue and reduce dependency on one-time product sales.

7. Revenue is highly concentrated in the West region, so efforts should be made to improve performance in South and North regions through targeted expansion strategies. 

8. Since the overall margin trend is declining from 2023 to 2025, cost control measures such as supplier negotiation and logistics optimization should be implemented along with pricing changes.

9. A combination of targeted price increases, removal of low-margin products, and focus on high-margin and recurring revenue streams is required to improve overall profitability


