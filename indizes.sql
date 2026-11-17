-- 1: Indexes using a B-tree where tha data will be looked up instead of the usual scan in tables, indexes essentially always take half of the data and look in those "halfs", mkaing SELECTs significantly faster.

--2: accounts/name, accounts/id, contacts/first_name, contacts/last_name

--3: In accounts/name would be useful for a login scenario, as after the account was created, the name wouldn't change, but would be searched often for a login (if the name was used for login).

CREATE INDEX idx_account_name ON accounts(name);
