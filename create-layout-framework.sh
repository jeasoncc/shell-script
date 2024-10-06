#!/bin/bash

components=("app-entry layout-home layout-book layout-error component-introduction component-login component-register component-terminal component-edit component-sidebar component-main component-head component-foot")

for loop in ${components[@]}
do
echo "正在创建:" $loop
bash create-react-component.sh $loop
done
