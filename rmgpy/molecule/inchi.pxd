
cpdef tuple decompose(string)

cpdef str ignore_prefix(str string)

cpdef str compose_aug_inchi(str inchi, str ulayer=*, str player=*)

cpdef str compose_aug_inchi_key(str inchi_key, str ulayer=*, str player=*)

cpdef list parse_H_layer(str inchi)

cpdef list parse_E_layer(str auxinfo)

cpdef list parse_N_layer(str auxinfo)
