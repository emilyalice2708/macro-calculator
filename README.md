# Macros Calculator

Small project for Makers week 3 - learning how to make a basic web application.

## My Approach
- Principles to follow: TDD, basic OO principles, extracting logic to the model.
- Create a web page which displays a form to be filled in.
- Form must record gender, age, height and weight.
- Submitting the form should prompt calculations of TDEE (Total Daily Energy Expenditure) and recommended grams per day for carbohydrate, protein and fat. 
- To calculate BMR and TDEE I will use the Harris-Benedict equation and assume 'light exercise' (for now!).
- For calculating macronutrient recommendations I will use the following percentages: 55% calories from carbohydrates, 25% from fat, 20% from protein. 
- These were chosen using the guideline percentage ranges from The Institute of Medicine of the National Academies (see table 13.3 (pg.965) in the [dietary reference intake report](https://www.nal.usda.gov/sites/default/files/fnic_uploads/energy_full_report.pdf). 
- I will refractor code to include two classes: Person and Calculator. 
- Calculator should accept a person and perform all relevant calculations.
- Once basic functionality is complete, I will use CSS and HTML to improve the aesthetic and usability.

## How to use

1. In the terminal:
```
rackup config.ru
```
2. Visit the local port in the browser.
3. Fill in form and submit.
