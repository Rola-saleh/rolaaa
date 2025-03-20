#!/bin/bash
# حساب الفائدة البسيطة

# التأكد من وجود المدخلات
if [ $# -ne 3 ]; then
  echo "Usage: $0 principal rate time"
  exit 1
fi

principal=$1
rate=$2
time=$3

# حساب الفائدة البسيطة
interest=$(echo "$principal * $rate * $time / 100" | bc)

# طباعة النتيجة
echo "The Simple Interest is: $interest"
