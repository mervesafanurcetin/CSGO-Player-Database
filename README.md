# CS:GO Player Statistics Database

## Overview

This project is a MySQL database designed to organize and manage Counter-Strike: Global Offensive (CS:GO) player statistics.

The database contains information about players, teams, equipment, kills, deaths, and round statistics. The main purpose of the project is to structure game-related data and make it easier to query and analyze player performance.

## Technologies Used

- **MySQL** – Database management and SQL queries
- **MySQL Workbench** – Database modeling and management
- **SQL** – Data manipulation, stored procedures, and database operations
- **CSV** – Data storage and import

## Database Structure

| Table | Description |
|---|---|
| `playerinfos` | Player information |
| `playerstats` | Player statistics |
| `killstats` | Kill-related statistics |
| `deathstats` | Death-related statistics |
| `perroundstats` | Round-based statistics |
| `equipment` | Equipment information |
| `player_equipments` | Player and equipment data |
| `teams` | Team information |
| `previousteams` | Previous team information |

## SQL Features

### Stored Procedure: Opening_Kill_Death_Ratio

Calculates the opening kill-to-death ratio for a specific player.

- Takes a player ID as an input parameter.
- Retrieves opening kills and opening deaths.
- Calculates the ratio.
- Returns `NULL` when opening deaths are zero.

## Project Files

```text
CSGO-Player-Database/
│
├── database/
│   ├── csgo_players_seperated_csv.mwb
│   └── playerinfos_data.sql
│
├── data/
│   ├── deathstats.csv
│   ├── equipment.csv
│   ├── killstats.csv
│   ├── perroundstats.csv
│   ├── playerinfos.csv
│   ├── playerstats.csv
│   ├── player_equipments.csv
│   ├── previousteams.csv
│   └── teams.csv
│
└── README.md
```

## Current Project Status

The repository contains the MySQL Workbench database model, CSV data files, and SQL scripts.

The included SQL script covers operations related to the `playerinfos` table. It is not a complete database backup, and a complete database initialization script is not currently included.

## Future Improvements

- Create a complete SQL database initialization script.
- Automate CSV data imports.
- Expand stored procedures and views.
- Add more queries for analyzing player performance.

---

**Database:** MySQL  
**Project:** CS:GO Player Statistics Database
