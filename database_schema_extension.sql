-- ইউজার টেবিল আপডেট বা কেওয়াইসি স্ট্যাটাস যোগ করা
ALTER TABLE users ADD COLUMN status ENUM('active', 'banned') DEFAULT 'active';
ALTER TABLE users ADD COLUMN kyc_status ENUM('pending', 'verified', 'rejected') DEFAULT 'pending';
ALTER TABLE users ADD COLUMN kyc_document VARCHAR(255) NULL;
