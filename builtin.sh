#!/usr/bin/env bash

# Primeiro testar se há somente uma variável

msg="informar um nome único de comando"
[[ $# -ne 1 ]] && echo $msg && exit 1

# Se o help der certo $1 é builtin;
# envia para /dev/null para não imprimir o resultado do comando

help $1 &> /dev/null

# Usar o comando test [[]] para testar se a saída de $? é 0 (sucesso)

[[ $? -eq 0 ]] && echo "$1 é builtin!" || echo "$1 não é builtin..."
exit 0
