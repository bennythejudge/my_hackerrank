#!/bin/bash




function solution() {

  arr=$(cat)

  arr="${arr[@]} ${arr[@]} ${arr[@]}"

  echo ${arr[@]}
}

a=$(cat << EOF | solution
Namibia
Nauru
Nepal
Netherlands
NewZealand
Nicaragua
Niger
Nigeria
NorthKorea
Norway
EOF)

expected="Namibia Nauru Nepal Netherlands NewZealand Nicaragua Niger Nigeria NorthKorea Norway Namibia Nauru Nepal Netherlands NewZealand Nicaragua Niger Nigeria NorthKorea Norway Namibia Nauru Nepal Netherlands NewZealand Nicaragua Niger Nigeria NorthKorea Norway"

echo "next should be OK"

if [[ $a = $expected ]]; then
  echo "OK"
else
  echo "FAILED"
fi

echo "next should be FAILED"

if [[ $a = ${expected}s ]]; then
  echo "OK"
else
  echo "FAILED"
fi

