# **Loan Analysis**

**How we can predict loan default risk?** To answer this, we need understand this question:
1. **What are the factors of default loan risk?**
2. **What is the measure of default loan risk?**
3. **How can we build a statistical model to predict the risk of default loan?**

#### **Model Conclusions & Summary**

There are several points that I take notes from this model:
1. The model produced a `P(default_risk)` that contains decimal numbers range from 0 to 1 that describe the probability of that particular person being default.

2. The `P(default_risk)` will later become the basis to determine chances whether the person default or not, with threshold if `P(default_risk)` are equals or above 0.5, greater the chances of that person will be default.

3. The model resulted in **90% true prediction (9 of 10 records), with 1 false predictions**. This model might predict better in larger samples or adding some other uncaptured feature in this dataset, because in the false prediction, we might categorize the record as anomalies, because based on the probability calculations it is unlikely for a self-employed woman to default **(the probability is under < 0.5)** given the chance that other woman and self-employed woman are not being default.

4. From the model there are some **hypotheses** that are proved, others are rejected because they are not based. This the list of the evidence I collected:
   **Proved Hypotheses**
   - **Employment Status:** there are evidence that unemployed customer and students have great chance of being default **(probability = 1)**, it means that is almost certain that student and unemployed customer will default their payments. 
   - **Gender:** men tend have greater risk of default **(probability = 0.83)**, it is likely that this men have a high risk decision appetite that may backfire to their financial adequacy.
   - **Age:** for *age range between 22-40*, the greater the customer's age, the lower the risk that customer will default their payments **(probability=0)**. This pattern might be explained by assumptions that older customer have higher income from the younger ones due to their work experience.

   **Rejected Hypotheses**
   - **Loan Amount:** From the graph, contrary to the initial hypotheses, the risk of default are greatest if the customer have loan amount about 4500. This is greater default risk from higher loans (loan amount = 5000) although the likelihood difference is very tiny.
   - **Terms_months:** From the graph, contrary to the initial hypotheses, the risk of default are greatest if term_months are under 7.5 months, greater than the risk of longest term payment loans which is 22 months.

### **Business Strategic Proposal**

From this analysis and model building, there are strategic proposals that are needed:
1. **Approve regular loan for only employed persons**, not unemployed persons nor students. To achieve this, find evidence if someone have income. The evidence could be from salary slips, bank statemens, anything that backed up that someone has monthly active income.
2. **Calculate the person's debt burden ratio or DBR** that is **monthly debt payment** divided by **monthly income**. It is advised to have a person that have DBR about 30-50% of their income, depends on the range of their salary.
3. **For both men and women, especially men**, take a greater emphasis on their credit credit history. See if they have loans before, beware if they have payment overdues or defaults in their payment history.
4. **For debtors that have age between 30-40, validated if they have greater salary and character**. Check their DBR, their credit payments.
5. **Promote the customer to take long term installments**. Create incentive for customers to take long term months, by promoting lower overall interest for long term payments.
6. **Create a special loan program for university students**. Students might not have salary to paid their loans, but still, they have large market potentials for the future. Make cooperation with notable university to fund the student education by the company student loans. Offer them cheaper interest rate. The payment of this special loan will be due 6 months - 1 year after they graduate from the university.
7. **Similar approach with point 6, can also be done for vocational institutions**, maintain cooperation with **vocational institutions** to fund the vocational education with loans that due 6 months after the vocational program finished.
