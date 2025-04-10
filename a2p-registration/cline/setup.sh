#!/bin/bash
echo "Setting up Supabase tables..."
psql "$SUPABASE_URL" < backend/supabase_schema.sql
