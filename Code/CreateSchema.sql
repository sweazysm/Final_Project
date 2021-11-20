﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "SevereWeatherEvents" (
    "event_id" INT   NOT NULL,
    "state" VARCHAR(20)   NOT NULL,
    "state_fips" INT   NOT NULL,
    "year" INT   NOT NULL,
    "month_name" VARCHAR(15)   NOT NULL,
    "event_type" VARCHAR(50)   NOT NULL,
    "injuries_direct" INT   NOT NULL,
    "injuries_indirect" INT   NOT NULL,
    "deaths_direct" INT   NOT NULL,
    "deaths_indirect" INT   NOT NULL,
    "damage_property" VARCHAR(15)   NOT NULL,
    "damage_crops" VARCHAR(15)   NOT NULL,
    "magnitude" INT   NOT NULL,
    "category" VARCHAR(25)   NOT NULL,
    "tor_f_scale" VARCHAR(5)   NOT NULL,
    "tor_length" FLOAT   NOT NULL,
    "tor_width" INT   NOT NULL,
    "begin_lat" FLOAT   NOT NULL,
    "begin_lon" FLOAT   NOT NULL,
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
    "population" BIGINT   NOT NULL,
    "gdp" BIGINT   NOT NULL,
    "primary_energy_consumption" FLOAT   NOT NULL,
    "energy_per_capita" FLOAT   NOT NULL,
    "energy_per_gdp" FLOAT   NOT NULL,
    CONSTRAINT "pk_WorldCO2byYear" PRIMARY KEY (
        "year"
     )
);

ALTER TABLE "SevereWeatherEvents" ADD CONSTRAINT "fk_SevereWeatherEvents_year" FOREIGN KEY("year")
REFERENCES "WorldCO2byYear" ("year");

