prompt 'Joe retire 4000 E';
update CLI set solde=solde-4000 where NomCli ='Joe';
prompt 'Nouveau Solde de Joe';
select solde from CLI where NomCli='Joe';
