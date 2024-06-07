INSERT INTO bgz.mandate (id, bewirtschafternummer, unterschriftsleistung, unterschriftsort, kontoinhaber, iban, bic, land, ort, mandatsreferenz, mandatsart,
                         personenreferenz, glaeubiger_id, erstellt_am, letzte_verwendung, status, anzahl_kaz, protektor)
VALUES ('cb3c6683-3707-4037-ad46-75ba18f9e341', '03043638', '2024-05-29', '', 'Bundeskasse', 'DE75512108001245126199', null, '', '', '123456789012345678901234',
        'B2C_SDD_1', '', null, '2024-05-30 00:00:00', null, 'g', 0, 'u');
INSERT INTO bgz.mandatprotokoll (zeitpunkt, benutzer, bewirtschafternummer, vsl, art, datenfeld, aktueller_wert, mandat_id)
VALUES ('2024-05-30 06:15:15.000', 'System', '03043638', '01330', 0, 'Kontoinhaber', 'Bundeskasse', 'cb3c6683-3707-4037-ad46-75ba18f9e341');
INSERT INTO bgz.mandatprotokoll (zeitpunkt, benutzer, bewirtschafternummer, vsl, art, datenfeld, aktueller_wert, mandat_id)
VALUES ('2024-05-30 06:15:15.000', 'System', '03043638', '01330', 0, 'Mandatsart', 'B2C_SDD_1', 'cb3c6683-3707-4037-ad46-75ba18f9e341');
INSERT INTO bgz.mandatprotokoll (zeitpunkt, benutzer, bewirtschafternummer, vsl, art, datenfeld, aktueller_wert, mandat_id)
VALUES ('2024-05-30 06:15:15.000', 'System', '03043638', '01330', 0, 'Mandatsreferenz', '123456789012345678901234', 'cb3c6683-3707-4037-ad46-75ba18f9e341');
INSERT INTO bgz.mandatprotokoll (zeitpunkt, benutzer, bewirtschafternummer, vsl, art, datenfeld, aktueller_wert, mandat_id)
VALUES ('2024-05-30 06:15:15.000', 'System', '03043638', '01330', 0, 'Unterschriftsleistung', '29.05.2024', 'cb3c6683-3707-4037-ad46-75ba18f9e341');
INSERT INTO bgz.mandatprotokoll (zeitpunkt, benutzer, bewirtschafternummer, vsl, art, datenfeld, aktueller_wert, mandat_id)
VALUES ('2024-05-30 06:15:15.000', 'System', '03043638', '01330', 0, 'Bewirtschafternummer', '03043638', 'cb3c6683-3707-4037-ad46-75ba18f9e341');
INSERT INTO bgz.mandatprotokoll (zeitpunkt, benutzer, bewirtschafternummer, vsl, art, datenfeld, aktueller_wert, mandat_id)
VALUES ('2024-05-30 06:15:15.000', 'System', '03043638', '01330', 0, 'IBAN', 'DE75512108001245126199', 'cb3c6683-3707-4037-ad46-75ba18f9e341');
