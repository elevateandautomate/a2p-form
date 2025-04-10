CREATE TABLE clients (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    business_name TEXT,
    ein TEXT,
    website TEXT,
    email TEXT,
    phone TEXT,
    industry TEXT,
    privacy_url TEXT,
    terms_url TEXT,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE brands (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    client_id uuid REFERENCES clients(id),
    twilio_brand_id TEXT,
    status TEXT DEFAULT 'pending',
    error TEXT,
    created_at TIMESTAMP DEFAULT now()
);

CREATE TABLE campaigns (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    brand_id uuid REFERENCES brands(id),
    use_case TEXT,
    sample_message TEXT,
    twilio_campaign_id TEXT,
    status TEXT DEFAULT 'pending',
    error TEXT,
    created_at TIMESTAMP DEFAULT now()
);
