NR == 1 {
    sub_num = NF - 2

    printf "%-8s %-8s", $1, $2

    for (i = 1; i <= sub_num; i++) {
        sub_name[i] = $(i + 2)
        sub_sum[i] = 0
        printf "%5s", sub_name[i]
    }

    printf "%5s %5s\n", "총점", "평균"
    next
}

{
    student_count++
    sum = 0

    printf "%-8s %-8s", $1, $2

    for (i = 1; i <= sub_num; i++) {
        score[i] = $(i + 2)
    }

    for (i = 1; i <= sub_num; i++) {
        sum = sum + score[i]
        sub_sum[i] = sub_sum[i] + score[i]
        printf "%5d", score[i]
    }

    avg = sum / sub_num

    printf "%5d %5.1f\n", sum, avg
}

END {
    printf "%-8s %-8s", "", "과목평균"

    for (i = 1; i <= sub_num; i++) {
        sub_avg = sub_sum[i] / student_count
        printf "%5.1f", sub_avg
    }

    printf "\n"
}
