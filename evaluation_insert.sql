
ALTER TABLE evaluation ALTER COLUMN evaluation_centre NVARCHAR(100) NULL;
ALTER TABLE evaluation ALTER COLUMN evaluation_date DATE NULL;
ALTER TABLE evaluation ALTER COLUMN evaluation_type NVARCHAR(100) NULL;
ALTER TABLE evaluation ALTER COLUMN evaluation_marque NVARCHAR(100) NULL;
ALTER TABLE evaluation ALTER COLUMN evaluation_time_debut TIME NULL;
ALTER TABLE evaluation ALTER COLUMN evaluation_time_fin TIME NULL;
ALTER TABLE evaluation ALTER COLUMN evaluation_acquis BIT NULL;

INSERT INTO evaluation 
(fk_session_formation_id, fk_seance_de_evaluation_id, fk_seance_evaluation_util_id, fk_stagiaire_id, 
evaluation_centre, evaluation_date, evaluation_type, evaluation_marque, evaluation_time_debut, evaluation_time_fin,
evaluation_acquis, evaluation_pratiques, evaluation_preconisation, evaluation_signature_date_operateur,
evaluation_signature_date_formateur, evaluation_signature_operateur, evaluation_signature_formateur,
fk_seance_evaluation_stagiaire_id, total_acquis, total_nonacquis, total_seance_eval)
VALUES(fk_session_formation_id, fk_seance_de_evaluation_id, fk_seance_evaluation_util_id, fk_stagiaire_id, 
NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, fk_seance_evaluation_stagiaire_id,
NULL, NULL, NULL);

select * from seance_evaluation_stagiaire
select * from evaluation
select * from seance_de_evaluation_grille