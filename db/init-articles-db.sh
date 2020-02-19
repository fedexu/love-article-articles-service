#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER $DB_USER WITH PASSWORD '$DB_PASSWORD';
    GRANT ALL PRIVILEGES ON DATABASE postgres TO $DB_USER;
    CREATE SCHEMA $DB_SCHEMA;
    CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
    
    GRANT USAGE ON SCHEMA $DB_SCHEMA TO $DB_USER ;
    ALTER DEFAULT PRIVILEGES IN SCHEMA $DB_SCHEMA GRANT ALL ON TABLES TO $DB_USER;
    
    CREATE TABLE $DB_SCHEMA.articles(
       id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
       name TEXT,
       description TEXT,
       markdown TEXT, 
       html TEXT, 
       url TEXT, 
       tag TEXT
    );

EOSQL
