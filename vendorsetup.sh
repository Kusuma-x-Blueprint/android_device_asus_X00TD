#!/usr/bin/env bash

echo "Patching QTI PowerHAL to be more silent ..."
cp device/asus/X00TD/patch/0001-Silence-QCOM-PowerHAL-failed-to-acquire-lock.patch vendor/qcom/opensource/power/
cd vendor/qcom/opensource/power/
git am 0001-Silence-QCOM-PowerHAL-failed-to-acquire-lock.patch -q
git am --abort
rm 0001-Silence-QCOM-PowerHAL-failed-to-acquire-lock.patch 
cd ../../../..
