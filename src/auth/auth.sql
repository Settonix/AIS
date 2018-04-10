

grant usage on schema api to authenticator;
grant all on api.artist to authenticator;
grant all on api.art to authenticator;
grant all on api.art_edition to authenticator;
grant all on api.art_image to authenticator;
grant all on api.customer to authenticator;
grant all on api.stock to authenticator;
grant all on api.companies to authenticator;

grant all on sequence api.companies_id_seq to authenticator;

grant all on sequence api.art_id_seq to authenticator;
grant all on sequence api.artist_id_seq to authenticator;
grant all on sequence api.art_edition_id_seq to authenticator;
grant all on sequence api.art_image_id_seq to authenticator;
grant all on sequence api.customer_id_seq to authenticator;
grant all on sequence api.stock_id_seq to authenticator;


grant all on api.art_edition_to_customer to authenticator;

grant web_anon to postgres;
grant usage on schema api to web_anon;

