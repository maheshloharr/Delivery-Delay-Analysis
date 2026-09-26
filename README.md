# 🚚 Delivery Delay Analysis

An end-to-end **Delivery Delay Analysis** project built to analyze delivery performance, identify delays, compare service types, and visualize operational trends using **Python, SQL, and Power BI**.

The project combines data analysis, SQL-based aggregation, and an interactive Power BI dashboard to provide a clear view of delivery delays and operational performance.

---

## 📌 Project Overview

Delivery delays can affect customer satisfaction, service-level performance, and operational efficiency.

This project focuses on answering questions such as:

- How many deliveries are present in the dataset?
- How many total delay days were recorded?
- What is the overall delay incidence rate?
- How do delays compare across service types?
- How do delay days change over time?
- Which routes contribute most to total delay?
- Which operational areas may require further investigation?

---

## 🎯 Project Objectives

The main objectives of this project are:

1. Analyze delivery records and delivery performance.
2. Calculate delivery delay in days.
3. Identify delayed deliveries by comparing actual and promised delivery time.
4. Aggregate delay days by service type.
5. Analyze delay trends by month.
6. Identify routes with higher accumulated delays.
7. Create an interactive Power BI dashboard for operational reporting.
8. Present the analysis in a portfolio-ready format using GitHub.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| 🐍 Python | Data analysis and preprocessing |
| 🧮 Pandas | Data manipulation and aggregation |
| 📓 Jupyter Notebook | Exploratory analysis |
| 🗄️ MySQL | SQL analysis and analytical queries |
| 📊 Power BI | Interactive dashboard and visualization |
| 🐙 GitHub | Project version control and documentation |

---

## 📂 Project Structure

```text
Delivery-Delay-Analysis/
│
├── Dataset/
│   └── Delivery / Route datasets
│
├── Outputs/
│   └── Analysis outputs
│
├── Practical set A.ipynb
├── excel analysis.xlsx
├── power bi set A prectical.pbix
├── sql practical set A.sql
├── requirements.txt
│
├── powerbi_dashboard.png
└── README.md
```

---

## 🔄 Project Workflow

```text
Raw Delivery Data
        ↓
Data Cleaning & Validation
        ↓
Python / Pandas Analysis
        ↓
SQL Data Analysis
        ↓
Delay Calculation
        ↓
Aggregation by Service Type / Route / Month
        ↓
Power BI Data Model
        ↓
Interactive Dashboard
        ↓
Business Insights
```

---

# 🐍 Python Analysis

Python and Pandas were used to inspect and analyze the delivery dataset.

### Key analysis performed

- Dataset inspection
- Data type validation
- Missing-value checks
- Duplicate checks
- Delivery performance analysis
- Delay-day calculation
- Service-type aggregation
- Route-level delay analysis
- Monthly delay analysis

### Delay Calculation

A delivery is considered delayed when:

```text
Actual Days > Promised Days
```

The delay is calculated as:

```text
Delay Days = MAX(Actual Days - Promised Days, 0)
```

This prevents early/on-time deliveries from producing negative delay values.

---

# 🗄️ SQL Analysis

SQL was used to perform structured analytical queries after connecting the delivery and route information.

### Main SQL analysis areas

- Total delay days by service type
- Routes with significant accumulated delays
- Delay incidence analysis
- Route-level delay contribution
- Aggregated delivery performance

Example logic:

```sql
CASE
    WHEN actual_days > promised_days
    THEN actual_days - promised_days
    ELSE 0
END
```

This approach converts delivery performance into a measurable delay metric that can be aggregated and visualized.

---

# 📊 Power BI Dashboard

The Power BI dashboard provides an interactive **Delivery Delay Analysis** view.

## Dashboard KPIs

The dashboard contains the following headline metrics:

### 1. Delivery Count

Displays the total number of delivery records included in the current dashboard filter context.

### 2. Total Delay Days

Shows the accumulated number of delay days across deliveries.

### 3. Delay Incidence Rate

Represents the proportion of delivery records where:

```text
Actual Days > Promised Days
```

For example, a value of `0.75` represents a 75% incidence rate when displayed as a decimal.

### 4. Hub Filter

The dashboard includes a hub slicer that allows the analysis to be filtered by locations such as:

- Chennai
- Delhi
- Mumbai

---

## 📈 Dashboard Visualizations

### Sum of Delay Days by Service Type

This bar chart compares total delay days across different service types, including:

- Express
- Standard

It helps identify how accumulated delays are distributed across service categories.

### Sum of Delay Days by Month

The monthly trend chart visualizes how total delay days change over time.

This helps identify:

- Months with higher accumulated delays
- Changes in delivery performance
- Potential operational trends
- Periods requiring deeper investigation

---

# 🖼️ Power BI Dashboard Preview

<img width="950" height="533" alt="Screenshot 2026-09-26 151259" src="https://github.com/user-attachments/assets/4d421783-2599-4a20-9a90-3cce6f183f7e" />



---

# 🎥 Project Demonstration Video

A demonstration video of the project is available here:

👉 **Google Drive Video / Project Demonstration**

https://drive.google.com/drive/folders/11yBfYh1GTigHMz_FUeHBqo9gU_jUOqeJ?usp=drive_link

> Note: Make sure the Google Drive sharing permission allows viewers to access the video.

---

# 💡 Key Business Use Cases

This analysis can support logistics and operations teams in:

- Monitoring delivery delays
- Comparing service-type performance
- Tracking monthly delay trends
- Identifying high-delay routes
- Monitoring SLA-related performance
- Supporting operational improvement discussions
- Creating management-ready delivery performance reports

---

# 📌 Important Metrics

| Metric | Description |
|---|---|
| Delivery Count | Total delivery records |
| Delay Days | Positive difference between actual and promised days |
| Delay Incidence Rate | Percentage of deliveries exceeding promised days |
| Service Type | Delivery service category such as Express or Standard |
| Route | Delivery route used for shipment |
| Hub | Operational delivery hub |
| Monthly Delay | Total delay days aggregated by month |

---

# 🚀 How to Run the Project

## Step 1: Clone the Repository

```bash
git clone https://github.com/maheshloharr/Delivery-Delay-Analysis.git
```

## Step 2: Open the Python Notebook

Open:

```text
Practical set A.ipynb
```

using Jupyter Notebook or JupyterLab.

## Step 3: Install Required Libraries

```bash
pip install -r requirements.txt
```

## Step 4: Run SQL Analysis

Open:

```text
sql practical set A.sql
```

Run the queries in MySQL Workbench.

## Step 5: Open Power BI Dashboard

Open:

```text
power bi set A prectical.pbix
```

Refresh the data if required and interact with the available filters and visuals.

---

# 📁 Repository Contents

### `Dataset/`

Contains the source delivery and route data used for analysis.

### `Practical set A.ipynb`

Jupyter Notebook containing Python-based analysis.

### `sql practical set A.sql`

SQL queries used for delivery-delay analysis.

### `excel analysis.xlsx`

Excel-based analysis and supporting calculations.

### `power bi set A prectical.pbix`

Power BI dashboard file containing KPIs, charts, filters, and visual analysis.

### `Outputs/`

Contains generated analysis outputs.

### `powerbi_dashboard.png`

Screenshot/preview of the Power BI dashboard.

---

# 🎓 Skills Demonstrated

This project demonstrates practical skills in:

- Data Cleaning
- Exploratory Data Analysis
- Python
- Pandas
- SQL
- MySQL
- Data Aggregation
- KPI Development
- Power BI
- Dashboard Design
- Data Visualization
- Business Analysis
- Logistics Analytics
- GitHub Project Documentation

---

# 👤 Author

**Mahesh Lohar**

Data Analytics / Data Science Portfolio Project

GitHub:  
https://github.com/maheshloharr

---

## ⭐ Project

**Delivery Delay Analysis**

An end-to-end analytics project combining **Python + SQL + Power BI** to analyze delivery delays and operational performance.
