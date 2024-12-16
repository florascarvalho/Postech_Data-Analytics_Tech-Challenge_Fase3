SELECT ano,
       mes,
       semana,
       (sigla_uf) AS uf,
       CAST(A002 AS INT64) as idade,
       (A003) AS sexo,
       CAST(A005 AS INT64) AS escolaridade,
       CAST(B0011 AS INT64) AS teve_febre,
       CAST(B0012 AS INT64) AS teve_tosse,
       CAST(B0013 AS INT64) AS teve_dor_garganta,
       CAST(B0014 AS INT64) AS teve_dificuldade_respirar,
       CAST(B0015 AS INT64) AS teve_dor_cabeca,
       CAST(B0016 AS INT64) AS teve_dor_peito,
       CAST(B0017 AS INT64) AS teve_nausea,
       CAST(B0018 AS INT64) AS teve_nariz_entupido_escorendo,
       CAST(B0019 AS INT64) AS teve_fadiga,
       CAST(B00110 AS INT64) AS teve_dor_olhos,
       CAST(B00111 AS INT64) AS teve_perda_cheiro_sabor,
       CAST(B00112 AS INT64) AS teve_dor_muscular,
       CAST(B00113 AS INT64) AS teve_diarreia,
       CAST(B002 AS INT64) AS comparecimento_estabelecimento_saude,
       CAST(B0041 AS INT64) AS postodesaude_unidadebasica_saudedafamilia,
       CAST(B0042 AS INT64) AS ps_sus_upa,
       CAST(B0043 AS INT64) AS hospital_sus,
       CAST(B0044 AS INT64) AS ambulatorio_consultorio_privado_ou_forcasarmadas,
       CAST(B0045 AS INT64) AS psprivado_forcasarmadas,
       CAST(B0046 AS INT64) AS hospitalprivado_forcasarmadas,
       CAST(B005 AS INT64) AS ficou_internado,
       CAST(B006 AS INT64) AS foi_entubado,
       CAST(B007 AS INT64) AS possui_planosaude,
       CAST(B009B AS INT64) AS resultado_swab,
       CAST(B009D AS INT64) AS resultado_sangue_furodedo,
       CAST(B009F AS INT64) AS resultado_sangue_veiabraco,
       CASE
          WHEN B009B='1' OR B009D='1'OR B009F='1' THEN '1'
          ELSE '0'
          END AS positivo_covid,
       CAST(B0101 AS INT64) AS diabetes,
       CAST(B0102 AS INT64) AS hipertensao,
       CAST(B0103 AS INT64) AS doenca_respiratoria,
       CAST(B0104 AS INT64) AS doencas_coracao,
       CAST(B0105 AS INT64) AS depressao,
       CAST(B0106 AS INT64) AS cancer,
       CASE
          WHEN B0101='1' OR B0102='1' OR B0103='1' OR B0104='1' OR B0105='1' OR B0106='1' THEN '1'
          ELSE '0'
          END AS possui_comorbidade,
       CAST(B011 AS INT64) AS medidas_restricao,
       CAST(C001 AS INT64) AS trabalhou,
       CAST(C007B AS INT64) AS clt_servidor,
       CAST(C01011 AS INT64) AS faixa_rendimento_habitual,
       CAST(C01012 AS INT64) AS rendimento_habitual,
       CAST(C011A11 AS INT64) AS faixa_rendimento_mesvigente,
       CAST(C011A12 AS INT64) AS rendimento_mesvigente,
       CAST(E001 AS INT64) AS solicitou_emprestimo,
       CAST(F002A1 AS INT64) AS possui_sabao_detergente,
       CAST(F002A2 AS INT64) AS possui_alcool,
       CAST(F002A3 AS INT64) AS possui_mascara,
       CAST(F002A4 AS INT64) AS possui_luvas,
       CAST(F002A5 AS INT64) AS possui_desinfetante_cloro
FROM `basedosdados.br_ibge_pnad_covid.microdados`
WHERE mes in(7,8,9)
ORDER BY ano, mes






