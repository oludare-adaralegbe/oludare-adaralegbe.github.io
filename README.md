# Top UK Youtubers 2024 Dashboard

## Table of Contents
- [Objective](#objective)
- [Data Source](#data-source)
- [Phases](#phases)
- [Design](#design)
  - [Dashboard Questions](#dashboard-questions)
  - [Dashboard Components/Mockup](#dashboard-componentsmockup)
  - [Tools](#tools)
- [Development](#development)
  - [Data Analysis Pipeline](#data-analysis-pipeline)
  - [Initial Data Observations](#initial-data-observations)
  - [Data Cleaning](#data-cleaning)
  - [Apply Data Transformation](#apply-data-transformation)
  - [SQL View Creation](#sql-view-creation)
- [Quality Assurance](#quality-assurance)
  - [Data Quality Checks](#data-quality-checks)
- [Visualisation](#visualisation)
  - [Dashboard](#dashboard)
  - [DAX Measures](#dax-measures)
- [Analysis](#analysis)
  - [Key Insights](#key-insights)
  - [Validation](#validation)
  - [Key Observation](#key-observation)
- [Recommendations](#recommendations)

## Objective
Identify Top UK YouTubers for Effective Marketing Campaigns in 2024.

### The Challenge
The Head of Marketing needs a data-driven approach to identify the most impactful UK YouTubers for their 2024 marketing campaigns. These collaborations will be crucial for reaching the right audience and maximizing campaign impact.

### The Solution
By using publicly available data (including YouTube Data API and Kaggle datasets) a dashboard focusing on UK YouTubers in 2024 can be created. This dashboard will display crucial metrics like:
- **Subscriber Count**: Shows the established audience base of each YouTuber.
- **Total Views**: Indicates the overall content reach and potential viewership for marketing campaigns.
- **Total Videos**: Provides context on content creation frequency and potential campaign integration opportunities.
- **Engagement Metrics**: Goes beyond basic viewership and delves into audience interaction, a crucial factor for successful campaigns.
- **Target Audience**: Identify YouTubers whose audience aligns with target demographic maximizing campaign effectiveness.
- **Channel Category**: Identify YouTubers who align with your brand's style and target audience.

### The Benefit
This data-driven approach will equip the marketing team to make strategic decisions about which YouTubers best align with their campaign goals ensuring successful collaborations and maximizing return on investment.

## User Story
As the Head of Marketing, I want a data-driven approach to identify high-performing UK YouTubers. This includes analyzing subscriber count, video uploads, total views, and engagement rate. By understanding these metrics, I can make informed decisions about potential marketing partnerships that will maximize campaign return on investment (ROI).

## Data Source
To identify high-performing UK YouTubers for our 2024 marketing campaigns, we'll use a dataset containing key performance indicators (KPIs).

### Data Acquisition
- Kaggle (Excel extract) - [Link to Kaggle dataset]
- Scrape YouTube data (Python script)
- Researched data

### Data Elements
- Channel Name
- Subscriber Count
- Total Views
- Total Videos Uploaded
- Engagement Metrics
- Channel Category
- Target Audience

## Phases
1. **Design**
2. **Development & Implementation**
3. **Quality Assurance**
4. **Analysis**

## Design

### Dashboard Questions
The following questions will guide the dashboard's content:
- **Top Performers**: 
  - Who are the top 10 YouTubers with the most subscribers?
  - Which 3 channels have uploaded the most videos?
  - Which 3 channels have the most total views?
  - Which 3 channels have the highest engagement rate?
- **Engagement & Efficiency**: 
  - Which 3 channels have the highest average views per video?
  - Which 3 channels have the highest views per subscriber ratio?
- **Additional Questions**: 
  - Is there a specific target audience demographic for the marketing campaigns?
  - What type of content do these YouTubers typically create (e.g., gaming, comedy, news)?

### Dashboard Components/Mockup
The dashboard will consist of several visual elements to answer the questions listed above:
- **Top Performers Section**: 
  - **Table**: Display all the YouTubers with their respective subscriber counts, video uploads, total views, likes, comments, and channel category.
  - **Horizontal Bar Chart**: Visually represent the top 10 YouTubers and their subscriber counts, total views, likes, and comments.
- **Engagement & Efficiency Section**: 
  - **Scorecards**: Showcase key metrics like average views per video, views per subscriber ratio, likes per view, and comments per view for the channels.
- **Additional Considerations**:
  - **Filtering Options**: Allow users to filter data by target audience to enhance exploration.
  - **Visual Appeal**: Maintain a clean and consistent design aesthetic to keep the dashboard visually appealing and user-friendly.

## Tools
The project will likely utilize a combination of the following tools:
- **Excel**: Initial data exploration and evaluation of the channels for product placement.
- **SQL Server**: For data cleaning, data quality tests, and analysis.
- **Power BI**: Primary tool for creating interactive visualizations and the final dashboard.
- **GitHub**: Hosting project documentation, code, and version control.
- **Mokkup AI**: Designing a wireframe/mockup for the dashboard layout.

## Development
### Data Analysis Pipeline
**Function**: Data Analysis Pipeline
**Input**: Raw data
**Output**: Data visualization and insights report

**Steps**:
1. Download the data from Kaggle
2. Perform initial data exploration to understand its structure
3. Import data into SQL Server
4. Cleanse the data using SQL queries
5. Test the cleaned data to ensure accuracy and completeness
6. Import the cleaned data into Power BI for visualization
7. Create DAX measures to calculate additional metrics
8. Build data visualizations for the dashboard
9. Analyze the data
10. Provide recommendations

## Initial Data Observations
The initial exploration in Excel reveals several key observations:
- **Data Completeness**: The data looks to have enough columns (at least 9) for our analysis, reducing the need for further information from the client.
- **Channel Identification**: The first column includes channel IDs separated by a "@" sign. We'll need to extract the channel names from this data.
- **Multilingual Considerations**: Some cells and headers are in another language. Identifying their relevance and resolving any language barriers will be crucial.
- **Data Streamlining**: The data includes more information than this project requires. We will need to identify and remove unnecessary columns to improve the analysis.

## Data Cleaning
Here's how the raw data will be transformed into a well-structured format:

### Desired Outcome
- **Column Selection**: Only the key columns necessary for the analysis will be kept.
- **Data Type Validation**: Each column's data type will appropriately reflect its content (VARCHAR for channel names, INTEGER for numerical values).
- **Null Value Elimination**: There will be no null values, ensuring that each record contains complete data.
- **Channel Name Extraction**: The actual channel names will be extracted from the first column using string manipulation functions in SQL.
- **Column Renaming**: For clarity, aliases will be assigned to the columns using appropriate names.

### Final Cleaned Data Schema
- **Number of Rows**: 100 
- **Number of Columns**: 9

| Column Name       | Data Type | Nullable | Description                                      |
|-------------------|-----------|----------|--------------------------------------------------|
| channel_name      | VARCHAR   | NO       | Name of the YouTube channel                      |
| total_subscribers | INTEGER   | NO       | Total number of subscribers for the channel      |
| total_views       | INTEGER   | NO       | Total views accumulated by the channel           |
| total_videos      | INTEGER   | NO       | Total number of videos uploaded by the channel   |
| total_likes       | INTEGER   | NO       | Total number of likes generated by the channel   |
| total_comments    | INTEGER   | NO       | Total number of comments generated by the channel|
| channel_category  | VARCHAR   | NO       | The category the channel falls under             |
| target_audience   | VARCHAR   | NO       | The demography of the channel’s audience         |

## Apply Data Transformation

## SQL View Creation

## Testing

## Visualisation

### Dashboard
### DAX Measures

## Analysis

### Key Insights
The following questions will guide the collection of essential information for our marketing client:
- **Top Performers**: 
  - Who are the top 10 YouTubers with the most subscribers?
  - Which 3 channels have uploaded the most videos?
  - Which 3 channels have the most views?
  - Which 3 channels have the highest engagement rate?
- **Engagement & Efficiency**: 
  - Which 3 channels have the highest average views per video?
  - Which 3 channels have the highest views per subscriber ratio?

#### A. Who are the top 10 YouTubers with the most subscribers?
1. NoCopyrightSounds - 33.70M subscribers
2. DanTDM - 28.70M subscribers
3. Dan Rhodes - 26.90M subscribers
4. Miss Katy - 24.60M subscribers
5. Mister Max - 24.50M subscribers
6. KSI - 24.10M subscribers
7. Dua Lipa - 23.60M subscribers
8. Jelly - 23.60M subscribers
9. Sidemen - 21.20M subscribers
10. Coldplay - 20.20M subscribers

#### B. Which 3 channels have uploaded the most videos?
1. Jelly - 7.08K videos
2. Raphael Gomes - 6.18K videos
3. English Addict with Mr. Duncan - 6.13K videos

#### C. Which 3 channels have the most views?
1. Miss Katy - 13.21B views
2. Mister Max - 13.20B views
3. Coldplay - 12.17B views

#### D. Which 3 channels have the highest engagement rate?
1. Mrwhosetheboss
2. Laurence Benson
3. Lisa Maynard

#### E. Which 3 channels have the highest average views per video?
1. Miss Katy
2. Mister Max
3. Laurence Benson

#### F. Which 3 channels have the highest views per subscriber ratio?
1. Laurence Benson
2. Miss Katy
3. Mister Max

### Key Observation

## Recommendations

