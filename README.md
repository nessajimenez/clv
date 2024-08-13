# UK Giftware Wholesale Retailer: Customer Insights & Recommendations

## Table of Contents
1. [Project Overview](#project-overview)
2. [Key Questions Explored](#key-questions-explored)
3. [Tools and Technologies](#tools-and-technologies)
4. [Process Breakdown](#process-breakdown)
5. [Considerations & Limitations](#considerations--limitations)
6. [Conclusions & Recommendations](#conclusions--recommendations)
7. [Additional Information](#additional-information)
8. [Data Source](#data-source)

## Project Overview

This project centers on a UK-based gift and giftware wholesale retailer seeking to leverage data analytics to enhance their business strategies. Historically, the company has struggled to consistently track and analyze its numbers. With a year's worth of transaction data now available, we aim to uncover valuable customer insights, make actionable recommendations, and estimate customer lifetime value (CLV) using machine learning.

### Key Questions Explored:
1. **Customer Insights**: What patterns and behaviors can we identify from the transaction data?
2. **Strategic Recommendations**: How can the company leverage these insights to improve its operations?
3. **CLV Estimation**: Using a machine learning model, what is the estimated customer lifetime value (CLV) for the next 3-6 months?

## Tools and Technologies
- **Python (Jupyter Notebooks)**: For data cleaning, exploratory data analysis (EDA), and machine learning.
- **MySQL Workbench**: To run queries and validate calculations related to customer behavior.
- **Tableau**: For visualizing customer purchase frequency, revenue trends, and other key metrics.

## Process Breakdown

### Exploratory Data Analysis (EDA)
- Conducted in Jupyter Notebooks, where I cleaned and prepped the raw transaction data.
- Focused on understanding customer behaviors, such as purchase frequency and monetary value.

### Database Exploration
- Exported the clean data to MySQL Workbench for further exploration.
- Queried the database to calculate metrics like frequency, recency, and monetary value, providing a solid foundation for CLV modeling.

### Customer Lifetime Value Prediction
- Leveraged the `lifetimes` Python library to predict future purchases and estimate CLV for the next 6 months.
- These predictions offer a glimpse into future revenue potential, aiding in strategic planning.

### Data Visualization
- Created visualizations in Tableau to explore revenue distribution, customer purchasing patterns, and more.
- These visualizations help to communicate the data's story effectively to stakeholders.

## Considerations & Limitations

While this analysis provides meaningful insights, there are a few limitations to note:

- **Lack of Profit and Cost Data**: Insights are based solely on revenue data; profit margins and acquisition costs are not accounted for, limiting the depth of financial analysis.
- **Limited Historical Data**: With only one year of data, it's challenging to determine the 'true' customer lifetime value. Assumptions were made based on the available data.
- **Incomplete Marketing Information**: Without data on marketing activities, it's difficult to fully understand the drivers behind certain sales spikes.

## Conclusions & Recommendations

- **Seasonal Purchasing Behavior**: 50% of revenue comes from customers making up to 5 purchases per year, aligning with seasonal buying patterns typical of wholesale buyers. However, an unexpected sales spike in November suggests further investigation into potential external influences like marketing pushes.
- **Customer Retention**: Over 60% of customers made repeat purchases, indicating strong customer relationship management practices. This is a key strength to build upon.
- **Pricing Strategy**: Consider reviewing the pricing structure and wholesale minimums. Many products were sold at wholesale prices with low quantities, leading to higher return rates. Implementing a minimum order quantity or adjusting retail pricing for smaller orders could mitigate this.
- **Growth Opportunities**: Exploring tradeshow participation during February and July could capitalize on seasonal buying trends, potentially boosting early-year sales.

## Additional Information

This project was developed as part of my final project for the Data Analyst bootcamp at Ironhack. You can view the slideshow presentation [here](https://docs.google.com/presentation/d/1NvLgAiTbC-Pp7tbqDG3JSPos09mHe9D0mHP5-tRFNcs/edit?usp=sharing).

With a background in project management, I’ve always focused on helping small businesses improve their operations. Through this bootcamp, I've deepened my expertise, enabling me to craft data-driven proposals and strategies that drive impactful change.

### Data Source
The original dataset was sourced from UC Irving Machine Learning Repository [here](https://archive.ics.uci.edu/dataset/502/online+retail+ii).
