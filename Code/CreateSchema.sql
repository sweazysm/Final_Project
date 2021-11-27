-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "SevereWeatherEvents" (
    "event_id" INT   NOT NULL,
    "state" VARCHAR(20),
    "state_fips" INT,
    "year" INT,
    "month_name" VARCHAR(15),
    "event_type" VARCHAR(50),
    "injuries_direct" INT,
    "injuries_indirect" INT,
    "deaths_direct" INT,
    "deaths_indirect" INT,
    "damage_property" VARCHAR(25),
    "damage_crops" VARCHAR(25),
    "magnitude" FLOAT,
    "category" FLOAT,
    "tor_f_scale" VARCHAR(5),
    "tor_length" FLOAT,
    "tor_width" FLOAT,
    "begin_lat" FLOAT,
    "begin_lon" FLOAT,
    CONSTRAINT "pk_SevereWeatherEvents" PRIMARY KEY (
        "event_id"
     )
);

CREATE TABLE "WorldCO2byYear" (
    "year" INT   NOT NULL,
    "co2" FLOAT   NOT NULL,
    "co2_per_capita" FLOAT   NOT NULL,
    "co2_per_unit_energy" FLOAT   NOT NULL,
    "coal_co2" FLOAT   NOT NULL,
    "cement_co2" FLOAT   NOT NULL,
    "flaring_co2" FLOAT   NOT NULL,
    "gas_co2" FLOAT   NOT NULL,
    "oil_co2" FLOAT   NOT NULL,
    "other_industry_co2" FLOAT   NOT NULL,
    "total_ghg" FLOAT   NOT NULL,
    "ghg_per_capita" FLOAT   NOT NULL,
    "methane" FLOAT   NOT NULL,
    "methane_per_capita" FLOAT   NOT NULL,
    "nitrous_oxide" FLOAT   NOT NULL,
    "nitrous_oxide_per_capita" FLOAT   NOT NULL,
    "population" FLOAT   NOT NULL,
    "gdp" FLOAT   NOT NULL,
    "primary_energy_consumption" FLOAT   NOT NULL,
    "energy_per_capita" FLOAT   NOT NULL,
    "energy_per_gdp" FLOAT   NOT NULL,
    CONSTRAINT "pk_WorldCO2byYear" PRIMARY KEY (
        "year"
     )
);

ALTER TABLE "SevereWeatherEvents" ADD CONSTRAINT "fk_SevereWeatherEvents_year" FOREIGN KEY("year")
REFERENCES "WorldCO2byYear" ("year");
