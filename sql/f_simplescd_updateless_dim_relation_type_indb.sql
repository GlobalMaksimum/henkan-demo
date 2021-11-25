(
select
    code as relation_type_id,
	description as relation_type_desc,
	upper(description) as relation_type_desc_cd
	from
     henkan_demo.ext_relation_type
)