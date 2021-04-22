**Lab Instruction: Multiple Regression Analysis**

There are two sections in this lab project. Section I is merely
instructive. That is, it will walk you through how to do (*most of*) the
commonly needed tasks in SPSS. You need not go through and do all of
this. The information is for your reference. Section II requires you to
complete a full regression analysis from start to finish. You will then
be responsible for writing up a short interpretation of your results and
discussion section (explained in full below). **You are expected to
refer to the Hair et al. chapter on MLR in your text. You are also
encouraged to seek online tutorials.**

The idea is that you should be able to finalize the lab in three days,
and that it should be completed by Friday, May 8^th^ at 17:00pm. You are
to submit the completed project via the Live\@Lund course webpage
(upload in the designated folder). All sections should be completed
within a single word document.

**Acknowledgement: these lab instructions were developed on the basis of
Jennifer Clemen's and Shai Mulinari\'s work. They developed an MLR lab
for the course in 2018. Thank you, guys!**

**Introductory notes:**

You will use a dataset created using World Bank data on global
development indicators. The dataset contains 526 variables spanning 4440
country-years. In short, you should be able to find ***something***
you're interested in. As this is an advanced, graduate-level course, you
will be responsible for your own data-scrubbing.

**Get to know your data:**

Your first step will be to familiarize yourself with the dataset. That
is, find out what variables are available to you. To do this, note the
two tabs at the bottom on the SPSS screen ("Data View" and "Variable
View"). Click on the Variable View tab. Here you will find information
about each variable (i.e., metadata). The 5^th^ column is titled
"Label." If you widen this column, you will be able to see a description
of each variable.

*Obviously, you do not have to learn every variable. Scroll up and down
a few times and get a sense of the kinds of variables available to you*

**(a) Loading Data**

For this exercise, we will be using the "World Bank Dataset" provided
for you on the course website.

-   Download the excel data file to the computer *(and remember where
    you put it).*

-   Open SPSS

\*\*\* An important note before you import your data, but after you open
SPSS \*\*\*

*You are encouraged to keep a record of all your commands in the syntax
box. Though this may seem like some extra steps, it is/will be a
life-saver if you find you've made a mistake or somehow lose all your
progress and have to start over. That said you are not required to use
the syntax box for this assignment. However, should you choose to use
the syntax box:*

-   Go to File \> New \> Syntax (this will open a new syntax window)

-   In your syntax window, go to File \> Import Data \> Excel

-   A box will appear allowing you to find the dataset you just saved.
    Once you locate the file, highlight it and click "Paste"

-   Another box will appear (cautioning you about formatting), simply
    click paste again.

-   Although the commands are pasted in the syntax box, they will not be
    executed without your permission. To execute your commands,
    highlight the code you wish to run, hold down the "ctrl" button and
    press "R."

> \*\*\* The only real difference between putting things in a syntax
> file and not using the syntax file is the click of a single button.
> You will go through, clicking the same set of commands with your
> mouse, but at the end -- rather than clicking ok -- you will click
> paste. You will then highlight what you've pasted and perform the
> control R command. You will save the syntax file at the end of the
> seminar so that you have access to it in the future \*\*\*

\*\*\* If you have chosen not to use a syntax file \*\*\*

-   In Statistics Data Editor window

-   File \> Import Data \> Excel

-   A box will appear allowing you to find the dataset you just saved.
    Once you locate the file, highlight it and click OK

-   Another box will appear (cautioning you about formatting), simply
    click ok.

If you look at the first column on your screen ("Name"), you will see
the name of each variable. Because it was impractical to provide you
with a complete codebook for this dataset, you will notice that the name
of the variable is the same as the "Label," except that the words are
strung together without spaces. Once you figure out which variables you
want to use in your models, you will want to rename the variables (to
something short, practical, and most importantly, clear to you). If you
look through the rest of the columns on this screen, they will tell you
about the form, length, class, and measurement (etc.) of each of
variable. However, notice that in the "Missing Data" column, SPSS is
telling you that none of your variables have missing values.

**\*\*\* SPSS is lying to you \*\*\***

(If you click on the Data View tab at the bottom of your SPSS screen and
scroll down, you will notice that in the boxes for which data are
absent, there is a "." This is the SPSS default. **Please be aware that
these are missing values and you will need to account for them later.**

**[Section I: How-To]{.underline}**

This section (i.e., the first 10 pages) is purely instructional. You
will find instructions to guide you through how to perform some, but not
all, of the necessary analytics. *[There is nothing in this first
section to "hand in."]{.underline}* That is, where Sections II asks you
to answer questions and cut and paste in information/graphs/tables, this
is not required in Section I. However, I encourage those who want to
become fluent in SPSS to spend some time reviewing the procedures
outlined below.

**(b) Creating a new variable (based on existing variables)**

Some of the most poorly behaved variables are those with exceptionally
high numbers (compared to the rest of your dataset). For instance, if
most of your variables are scaled between 1 and 10, having 6729124907.00
as a value can be mathematically challenging (they can royally screw up
your regression results). To deal with these, it's often easiest to log
them.

-   Click Transform \> Compute Variable

-   In the target variable box, type the name of this new variable:
    *log.gdp*

-   Move the variable(s) that you will be using to create this new
    variable into the Numeric Expression box: GDPcurrentUS\$NY...

-   The Function Group box identifies the type of function you'd like to
    perform: Arithmetic *(most of the time, this will likely be
    arithmetic).*

-   Based on what you select the box below, Functions and Special
    Variables, will present of options. To log our variable, select: Ln
    (natural logarithm)

-   Click OK/Paste

Your new variable will be located in a new column at the end of your
dataset

\*\*\* NOTE: This is also how you can center a variable and create an
interaction term \*\*\*

Once you've run your descriptive statistics, to center the variable you
can create a new variable by subtracting the mean from the values of the
old/existing variable -- following the same procedure as above. To
produce an interaction term, you can compute a variable that multiples
two of your centered variables together. Remember to double check that
it worked properly!

**(c) Renaming your variables**

There are multiple ways to rename (or otherwise recode) variables in
SPSS. The easiest way is to simply click on the box with the name you
want to change. However, since the names of variables in this dataset
also tell you how something is measured (in dollars versus percentages,
etc.), it would be beneficial to make a copy of the variable you wish to
rename -- and then rename the copy (rather than the original). This way
you have the original variable intact and untouched for reference later.
To execute this second approach you will essentially repeat the same
steps as above (when you were creating a new variable), except that this
time you won't modify the variable:

-   Click Transform \> Compute Variable

```{=html}
<!-- -->
```
-   In the target variable box, type the new name of the variable you
    wish to rename

-   Move the variable that you will be renaming into the Numeric
    Expression box

-   In the Function Group box select "All"

-   In the Functions and Special Variables box, highlight nothing.

-   Click OK/Paste

Your re-named variable will be located in a new column at the end of
your dataset.

**(d) Changing the measured form of your variables**

There are A LOT of ways to do this -- and ultimately, the way you select
will be dictated in part by which variable you're recoding and the new
code you want. This approach will cover *most* of your needs.

As an example, let's say we want to transform the crude birth rate
variable "Birth Rate, crude," into bins based on quartiles. That is, the
new birth rate variable won't tell us how many births happen per year,
but will instead identify the percentile of births (i.e., the number 4
will mean that the country in a given year has a rate of 30.356
births/1000 people or higher).

-   Click Transform \> Visual Binning

-   Select the variable you wish to transform from the left column and
    move it to the right:"Birthratecrude(per1000people)"

-   Click Continue

-   Under the "Name" heading you will see the name of the current
    variable, and below it, in the "Binned Variable" box, you will
    create a name for this new binned variable. Title this new variable:
    "birthrate.bins"

-   Click on the "Make Cutpoints" button in the lower right corner.

-   Select "Equal percentiles Based on Scanned Cases" in the center of
    the box.

-   As we are binning this variable based on quartiles, type 3 into the
    "Number of Cutpoints" box. In the "Width(%)" box below, you should
    see "25%" appear. This indicates you will have 25 % of the data in
    each bin.

-   Click Apply \> Ok/Paste

**(e) Recoding Variables**

Let's say we want to recode a variable from one for (continuous,
ordinal, etc.) into a dummy variable. For this example, we'll use the
"birth.rate.bin" variable we just created. Rather than categories based
on quartiles, let's imagine we just want to know whether a country fits
into the top 50% for birth rate (that is, whether a country in a given
year is either a 3 or a 4).

-   Click Transform \> Recode into Different Variables

-   Select birth.rate.bin from the left column and move it to box on the
    right.

-   In the "Name" box we will enter a new name for our variable. Type:
    "birth.rate.dummy"

-   Click the "Change" button below.

-   Click the "Old and New Values" button

-   To create a dummy variable we need to divide our variable into 0s
    and 1s (i.e., it either IS or ISN'T, it either DOES or DOES NOT).
    Because we are interested in only those country-years in which
    states fall into the upper 2 quartiles, these we code as "1." Thus,
    in the upper left corner, where "Value" is selected, type 4.

-   In the right column, under "New Value," type 1.

-   Click Add

-   Now you will do the same for the remaining numbers. You will recode
    all 3s to be 1's, and you will recode 1s and 2s as 0s.

-   When you are finished, click Continue and you will have your shiny
    new dummy variable.

**(f) Correlations**

-   Click Analyze \> Correlate \> Bivariate

-   Enter variables

-   Click Options, make sure appropriate boxes are checked (then click
    Continue)

-   Click Ok/Paste

**(g) Scatterplots**

In addition to running numerical descriptives (i.e., measures of central
tendency, etc.), you always want to look at the distribution of each
variable.

-   Click Graphs \> Chart Builder on the top menu

-   Under the "Gallery" tab, click Scatterplot from the list

-   Click on the first box (pictured at right) and drag it into the
    chart preview space above.

-   Now click the "Basic Elements" tab.

-   On the lower left, double click on the X Axis box.

-   Select a variable and drag it onto the x-axis.

-   Click Ok/Paste

\*\*\* To create a scatterplot matrix \*\*\*

-   Click Graphs \> Chart Builder on the top menu

-   Under the "Gallery" tab, click Scatterplot from the list

-   Click on the second box in the second row (with a square in it -
    pictured at right) and drag it into the chart preview space above.

-   Now click the "Basic Elements" tab.

-   On the lower left, double click on the Y-X Axis box.

-   Select all variables and drag them into the x-axis (yes, just keep
    piling them on).

-   Click Ok (paste does not always work here).

*\*\* To display more sophisticated scatterplot matrices, such as those
for partial plots \*\**

-   Graphs \> Legacy Dialogs \> Scatter/Dot

-   Enter variables (you will also have the option of labeling cases,
    etc.)

-   Check Options button on right for more possibilities.

-   Click Ok/Paste.

**(h) Determining an Interaction**

[Option 1: For Comparison of Centered Versus Non-Centered
models]{.underline}

-   Center variables

-   Analyze \> Regression \> Linear

```{=html}
<!-- -->
```
-   Enter your newly centered variables (and ONLY those variables) into
    the appropriate boxes.

-   Click Next and enter both centered variables AND the interaction
    variable in the IV box.

-   Click Ok/Paste

[Option 2: For Generalized Comparison]{.underline}

-   Analyze \> Regression \> Linear

```{=html}
<!-- -->
```
-   Enter variables for one model into the appropriate boxes

-   Click Next and enter variables for a second model in the IV box.
    Continue this process until you have entered ALL the models you wish
    to compare.

-   Click Ok/Paste

**(i) To Compare model transformations**

[Option 1:]{.underline}

-   Regression \> Curve Estimation

-   Type in variables and select the different types of models you want
    to try.

[Option 2:]{.underline}

-   Create new, transformed variables to compare (so you have X, now you
    create X^2^ as a new variable and X^3^ as a new variable.

-   Enter in DV. In the IV box, you will write in your models separately
    (i.e., so one model has only your non-transformed Xs; then click
    Next \> your second model has original Xs plus one of your
    transformations, only X^2^; click Next \> your third model will have
    original Xs and the other transformation X^3)^. You will never need
    to go higher than a cubic transformation.

-   Select the plots and stats you want using the button on the right
    side of the box.

-   Click Ok/Paste

**(j) Running Anova(s) and Testing for Linearity**

*\*\* Remember that you can also receive ANOVA output when you perform a
regression -- you may not need to do this separately \*\**

-   Click Analyze \> Compare Means \> Means

-   Enter DV and IVs

-   Click Options in upper right corner of box

-   A new dialogue box appears. At the bottom of this new box, mark Test
    for Linearity \> Continue

-   Click Ok/Paste

**(k) Running Regressions (includes tests for normality,
homoskedasticity, Durbin-Watson)**

In general, you can do most of what you need to do in order to determine
whether all assumptions have been satisfied by selecting a series of
options while you're preforming a regression. To run a regression:

-   Analyze \> Regression \> Linear

-   Enter independent and dependent variables

-   Clicking Next will allow you to enter multiple models at once.

-   Below the box of independent variables it says "Method" -- this is
    where you'd enter "Enter" (meaning all variables are forced into
    your model) or "Stepwise" (meaning your variables are only added to
    the model is they satisfy certain criteria (i.e., if they modify the
    model enough to increase its explanatory power in a significant
    way).

-   The box for "Selection Variable" allows you to run models on a
    subset of data (i.e., for instance, maybe you only want to run the
    model on data from the year 2000, or you wish to only look at cases
    in which the Urban population is above a particular threshold).

-   Click Statistics (at right). Here you have the option of getting
    partial correlations, collinearity diagnostics, R^2^ measures,
    Durbin-Watson estimates (test auto-correlation), Confidence
    Intervals, as well as other descriptives, etc. Once you've selected
    what you want, click Continue.

-   Click Plots at right. Here you can plot the residuals (ZRESID = y)
    against the Predicted probabilities (ZPRED = x), selecting Produce
    all partial plots, Normal probability plot, and histogram will
    provide you with a wealth of information. When finished, click
    Continue.

-   Click Options only if you've selected the Stepwise Method. Under the
    Options tab you can change the criteria for when variables should be
    dropped. Click Continue.

-   Click Ok/ Paste.

**(l) Adding Loess Lines**

You can add loess lines (https://www.youtube.com/watch?v=Vf7oJ6z2LCc )
(or regression lines) to any graph you have already produced by double
clicking on the graph itself. Once you do, a new box containing only the
graph will appear. At the top:

-   Click Elements \> Fit Line at Total

-   In the Properties box, select Loess, click Apply.

-   You will also have the choice of adding Confidence Intervals (select
    Individual, then Apply).

**(m) Testing for Independence: Autocorrelation Plots**

-   Analyze \> Forecasting \> Autocorrelations

-   Enter variable(s)

-   Click options to change the number of lags

-   Click Ok/Paste

**[Section II: Multiple Regression From Start to End]{.underline}**

In this section you will carry out a multiple regression (in stages)
from beginning to end.

[Your Research, Your Way]{.underline}

Based on the database, identify a research question (good research
questions begin with "What impacts," What factors effect," "How does,"
"Under what conditions..."). Remember that good research questions are
answer-able. **Think which IV variable(s) is of focal interest and which
variable(s), if any, could act as confounders or mediators.**

RQ:

(Example: What is the impact of equality on GDP?)

Add a brief explanation of the research question. Why did you select it?

Based on your research question, develop at least 2 hypotheses to test:

H~1:~

H~2:~

Using the appropriate notation, write out the equation for your model.
You must have minimally 3 independent variables (and no more than 5).

*Note: In most research efforts, we begin with an idea about what we
want to study and then we get into the data and realize that some of
what we want/need isn't available -- so we have to use proxies or create
new variables. At this point in the assignment, I do not expect you to
know what will and won't be possible. I am merely looking for a
conceptual (as opposed to operational) equation. Later on in the
assignment, I will ask that you be very specific. Thus, for now you
might write "democracy" as a variable without knowing how exactly you're
going to measure democracy. By the end of the paper, however, you will
re-write the equation using the operational variables.*

Theoretical Model Equation:

[Purpose and Procedure]{.underline}

The purpose of this exercise is to develop a model to explain your
research question. You are to display the procedures you use, step by
step.

[*Step 1*: Descriptive statistics]{.underline}

a\. Individual Variables: Provide descriptive statistics (numerically
and graphically) for all of your variables. This includes measures of
central tendency and dispersion, as well as graphs showing the
individual distribution of each variable. Graphical information for each
variable should be separated by a centered, bolded heading (shown
below). However, you may choose to have a single table containing all
necessary numerical information for ***all*** variables (as this is
likely easier and more convenient) -- see example below.

**Variable 1: (Name of Variable Here)**

**Variable 2: (Name of Variable Here)**

**Variable 3: (Name of Variable Here)**

**Variable 4: (Name of Variable Here)**

![](media/image3.png){width="3.058333333333333in"
height="1.7291666666666667in"}

b\. Relative Variable Statistics: Create a correlation matrix for all
variables in your analysis. Interpret the information in the matrix and
identify any problems / issues that need to be corrected. If you do
multiple iterations of this (because you identify possible
multicollinearity) please paste ONLY your FIRST correlation table and
your FINAL correlation table (I do not need to see all the ones that
happen in between).

First Table:

Final Table:

Interpretation: Please explain what changes were necessary between your
first and final matrices, as well as why and how you made those changes.
*\[This explanation need not be longer than 10 sentences.\]*

\*\*\* Remember that completing a regression will provide you with a
great deal of information. Once your descriptives are done, begin with
the regression and mark the assumptions off as you go (rather than going
through each assumption on its own) \*\*\*

**[In your final paper, you MUST NOT -- under any circumstance - have an
N lower than 100 (and really, there's no reason it shouldn't be at least
300.]{.underline}**

[*Step 2*: Testing Assumptions]{.underline}

Here you will go through and systematically demonstrate that you have
tested all of the assumptions of a linear model. I HIGHLY recommend you
go through these in order (you will likely save yourself a significant
amount of time). That is, don't spend a lot of time transforming
variables to create normality only to realize you have big problems with
multicollinearity. Once again, I recommend running descriptives and
immediately hopping into regression -- as many of your assumption tests
will be contained in the regression output. Please read the [Analysis
and Results section]{.underline} before you start checking assumptions.
There are also many good online tutorials, e.g.
<http://www.open.ac.uk/socialsciences/spsstutorial/files/tutorials/assumptions.pdf>

You are expected to check:

**Influential cases:**

NOTE: There are many alternatives for checking this. However, for this
lab you only need to calculate Cook's distances. You don't need to paste
the table but please interpret the results i.e. evidence or not of
influential cases. If you have any influential cases you should run the
regression with and without them and interpret the difference.

**Multicollinearity:**

NOTE: Once your tables and figures have been pasted in, please interpret
the output (i.e., the presented information), and explain how you've met
the absence-of-multicollinearity assumption. It is possible that you've
dealt with this by using transformations. This is fine, but be sure to
include and interpret the appropriate output.

**Independence**

This is a panel dataset, which can put you at risk for problems of
independence. Check for independence.

NOTE: Once your tables and figures have been pasted in, please interpret
the output (i.e., the presented information), and explain how you've met
or not met the independence assumption.

**Homogeneity of variance**

NOTE: Once your tables and figures have been pasted in, please interpret
the output (i.e., the presented information), and explain how you've met
or not the homogeneity assumption. Remember that if your data shows
heterogeneity of variance you can use bootstrap methods (select bias
corrected accelerated 95%CI).

**Linearity:**

Your test of linearity should include a test to determine whether there
are interaction effects in your model. You need only do this with ONE of
your independent variables (usually we have 1 IV of particular
importance -- pick that one). Remember that this variable will need to
be categorical/dummy, so it's possible you will have to change the form
of the variable.

\*\* Note: If you have a nonlinear relationship, you are expected to use
the appropriate transformation in order to resolve the issue. You will
need to include all of the appropriate tables and graphs in order to
show that you correctly identified and corrected for the non-linear
relationship. \*\*

NOTE: Once your tables and figures have been pasted in, please interpret
the output (i.e., the presented information), and explain how you've met
the linearity assumption. Please detail how each variable is measured.

**Normality:**

NOTE: Once your tables and figures have been pasted in, please interpret
the output (i.e., the presented information), and explain how you've met
or not met the normality assumption. Remember that if your residuals
show non-normality you can use bootstrap methods (select bias corrected
accelerated 95%CI). Also, remember the central limits theorem!

[*Step 3*: Final Model]{.underline}

Believe it or not, all the work you've done up to this point is never
recognized. That's all the work we need to do before we can begin the
work we actually publish.

That said, you've come to a place where you have your final set of
variables that you know will conform (or not) to the assumptions of a
linear model. Please write your operational model below.

Beneath your model, explain how each of your variables is measured and
why you chose to use that particular variable (versus others) to
represent your concept. Address any challenges to validity and
reliability. Hint: There are ALWAYS challenges.

[*Step 4*: Analysis and Results]{.underline}

This is where you will present your work and your findings. I expect you
to present it in the same way you would write it up for publication.
That is, mind your decimal places, titles and variable names. Present
only the information that is necessary to address your research
question, and be sure to thoroughly explain and interpret every portion
of your output.

I would like to see regression tables with *at least* *two* models
compared and run using the "Enter" method. One with one single or a
maximum of two IV, and one with more IV (for example, could be
confounders or mediators). You are to provide a short discussion of the
findings. Your discussion should be between 200 and 400 words. Do NOT
exceed 400 words.

[*Step 5*: Discussion]{.underline}

In a published article, the author follows the presentation of results
with a discussion that relates the analysis to the research question.
You will do that here. Please make a convincing argument for WHY and HOW
your results address your research question. Make sure you clearly
identify whether your analyses provide support for each of your
hypotheses. If there are unexpected results -- i.e., a sign is flipped
when additional variables are included, a relationship you expected is
not there or disappeared, or a new relationship that you did not expect
appeared (all of which happen a lot) -- please take a few sentences
(2-3) to discuss why you think these things occurred. Please conclude
your discussion with an acknowledgement of the limitations of your work.
What imperfections exist that prevent us from interpreting this as fact
and what do you recommend to future researchers who are interested in
exploring your same topic? (i.e., what's the next step?) \[Your
discussion should be between 250 and 500 words. Do NOT exceed 500
words\].
