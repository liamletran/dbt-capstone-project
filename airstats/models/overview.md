{% docs __overview__ %}
# AirStats Pipeline



**Silver Layer**: In this layer, the raw data from the Bronze layer is
cleaned and transformed to create a more structured and usable format. This involves tasks such as data cleansing, deduplication, and basic transformations. This data system is built around 3 interconnected Silver-level tables:

 - **silver_airports**: This is the central dimensional table storing information on over 72,000 airports worldwide.

 - **silver_runways**: Provides details about runways, connected to the airport table via the **airport_ident** identifier.

 - **silver_airport_comments**: Stores user feedback on airport experiences, also using **airport_ident** as a foreign key to link to the main airport information table.



{% enddocs %}