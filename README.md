## Scenario 
UK gift and giftware wholesale retailer seek a data analyst to translate raw data into usable information. They haven't been very good at keeping up with and studying their numbers in the past, and now seek to correct that going forward. The data available is limited: a  year's worth of transaction data. 

1. What insights about the customers and their behavior can we draw from the data?
2. What recommendations and next steps can we give the company based on the data?
3. Using a machine learning model, what is the estimated customer lifetime value (CLV) for the next 3-6 months?

## Tools used
- Python Jupyter Notebooks
- MySQL Workbench
- Tableau

## Process
I performed exploratory data analysis in my Jupyter Notebooks to clean and understand the data, preparing it for the machine learning model and visualizations. I sent the clean data to MySQL Workbench where I used a variety of queries to explore the data further and calculated frequency, recency and monetary value of customers (this way I could double check the work from the ML model). Back in Python, I used the lifetimes library to predict purchases and customer lifetime value for the next 6 months. In Tableau, I created a series of visualizations focusing on exploring revenue and frequency of purchases

## Considerations
While I'm able to draw some helpful insights from the data available, a deeper analysis was not possible due to the following:
- I only have information on revenue, not profit margins or costs, which can tell us a more complete story on the health of the business 
- I have no information on cost of aquisition, how much does it cost to bring in new customers?
- with only one year's worth of data, it's impossible to know the 'true' lifetime of each customer, so I had to assume the average lifetime based on the info available
- I don't know anything about the marketing/advertising behaviors of the company

## Conclusions and recommendations
After completing my analysis we can see that about 50% of revenue comes from customers that buy up to 5 times a year, which makes sense considering wholesale buyers typically buy seasonally. That said, their buying patterns did not line up with the peaks I would typically expect: February/March (spring/summer merchandizing) and July/August (fall/winter merchandizing). There is a spike in sales at the end of the year (November). Looking at the products purchased during that time, there wasn't anything to suggest last minute Christmas merchandizing. The most popular products during that time would be described as general gift and packaging. My recommendation here is to study this spike more in depth, what is happening to produce this spike? Is there some sort of marketing push that led to it, or are your custoomers simply more inclined to do most of their purchasing at the end of the year?

Over 60% of customers returned to make at least another purchase during the year, which is an impressive stat. Whatever the company is doing with customer relationship management and follow ups seems to be working pretty well.

Going forward, it's important that data collection and analysis becomes a regular part of business operations. The more data we have on transactions, customer behavior, engagement etc. The deeper analysis can go and the more precise insights we can get that will help with decision making.

I recommend looking at pricing structure and wholesale minimums. I noticed there were many products sold at wholesale price with quantities as low as 1 per product and a lot of these ended up being returned. In wholesale there are two strategies companies typically implement: a required minimum number of pieces per product per order OR product is sold at retail price for any amount less than 12 units. While I don' know enough about this companies pricing strategy, it's worth studying the effects these two strategies could have.

Finally, looking towards growth, what opportunities can we explore? Based on the buying pattern, I suspect tradeshows could be something to consider going forward, especially to take advantage of tradeshow season in February and July to boost sale numbers earlier in the year.

## Other Info
This was my final project for the Data Analyst bootcamp at Ironhack. [The slideshow I presented can be found here.](https://docs.google.com/presentation/d/1NvLgAiTbC-Pp7tbqDG3JSPos09mHe9D0mHP5-tRFNcs/edit?usp=sharing)

I have a background in project management working with small businesses to improve their systems and implementing new and better ways of working. What I have learned in the bootcamp has allowed me to work with raw data directly with allows me to create even better project proposals and plans. 


