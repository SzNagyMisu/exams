File.delete(*Dir['db/tables/*'])

Student.seed([
    {id: 1, name: 'Vizsgázó Béla', initials: 'VB'},
    {id: 2, name: 'Számotadó Aladár', initials: 'SzA'},
    {id: 3, name: 'Dolgozatíró Éva', initials: 'DÉ'}
])

Exam.seed([
    {id: 1, year: 2015, number: 1},
    {id: 2, year: 2015, number: 2},
    {id: 3, year: 2016, number: 1},
    {id: 4, year: 2016, number: 2}
])

Exercise.seed([
    {id: 1, exam_id: 1, number: 1, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja, hogy a tömbben szereplő számok között szerepel-e 3-mal osztható.'},
    {id: 2, exam_id: 1, number: 2, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja, hogy a tömbben szereplő összes szám osztható-e 3-mal.'},
    {id: 3, exam_id: 1, number: 3, task: 'Adott egy 1.000.000-nál kisebb, pozitív, egész számokat tartalmazó tömb és egy 1.000.000-nál kisebb pozitív, egész szám (pl.: 255). Írj algoritmmust, ami kiválasztja a tömbből azt a számot, ami a megadott (255) számhoz a legközelebb van.'},
    {id: 4, exam_id: 2, number: 1, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja, hogy hány páros szám van a tömbben.'},
    {id: 5, exam_id: 2, number: 2, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja a tömbben szereplő páratlan számok összegét.'},
    {id: 6, exam_id: 2, number: 3, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami kiválasztja a tömbben található legnagyobb páros számot.'},
    {id: 7, exam_id: 3, number: 1, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja a tömbben szereplő legkisebb páratlan és a legnagyobb páros szám összegét.'},
    {id: 8, exam_id: 3, number: 2, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja, hogy a tömbben szereplő számok között van-e legalább 4 darab 3-mal osztható.'},
    {id: 9, exam_id: 3, number: 3, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami kiválasztja a tömbben található legnagyobb páros számot.'},
    {id: 10, exam_id: 4, number: 1, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja, hogy a tömbben szereplő számok legalább fele páros-e.'},
    {id: 11, exam_id: 4, number: 2, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami a tömb elemeit (növekvő sorrendbe) sorba rendezi.'},
    {id: 12, exam_id: 4, number: 3, task: 'Adott egy pozitív, egész számokat tartalmazó tömb. Írj olyan algoritmust, ami megadja, hogy a tömbben hány darab páros és hány darab páratlan szám van.'}
])

StudentExercise.seed([
    {id: 1, student_id: 1, exercise_id: 1, solution: '', score: 5},
    {id: 2, student_id: 1, exercise_id: 2, solution: '', score: 10},
    {id: 3, student_id: 1, exercise_id: 3, solution: '', score: 8},
    {id: 4, student_id: 1, exercise_id: 4, solution: '', score: 7},
    {id: 5, student_id: 1, exercise_id: 5, solution: '', score: 7},
    {id: 6, student_id: 1, exercise_id: 6, solution: '', score: 8},
    {id: 7, student_id: 1, exercise_id: 7, solution: '', score: 6},
    {id: 8, student_id: 1, exercise_id: 8, solution: '', score: 9},
    {id: 9, student_id: 1, exercise_id: 9, solution: '', score: 9},
    {id: 10, student_id: 1, exercise_id: 10, solution: '', score: 8},
    {id: 11, student_id: 1, exercise_id: 11, solution: '', score: 8},
    {id: 12, student_id: 1, exercise_id: 12, solution: '', score: 10},
    {id: 13, student_id: 2, exercise_id: 1, solution: '', score: 8},
    {id: 14, student_id: 2, exercise_id: 2, solution: '', score: 9},
    {id: 15, student_id: 2, exercise_id: 3, solution: '', score: 10},
    {id: 16, student_id: 2, exercise_id: 4, solution: '', score: 10},
    {id: 17, student_id: 2, exercise_id: 5, solution: '', score: 10},
    {id: 18, student_id: 2, exercise_id: 6, solution: '', score: 10},
    {id: 19, student_id: 2, exercise_id: 7, solution: '', score: 10},
    {id: 20, student_id: 2, exercise_id: 8, solution: '', score: 9},
    {id: 21, student_id: 2, exercise_id: 9, solution: '', score: 10},
    {id: 22, student_id: 2, exercise_id: 10, solution: '', score: 7},
    {id: 23, student_id: 2, exercise_id: 11, solution: '', score: 8},
    {id: 24, student_id: 2, exercise_id: 12, solution: '', score: 9},
    {id: 25, student_id: 3, exercise_id: 1, solution: '', score: 10},
    {id: 26, student_id: 3, exercise_id: 2, solution: '', score: 9},
    {id: 27, student_id: 3, exercise_id: 3, solution: '', score: 10},
    {id: 28, student_id: 3, exercise_id: 4, solution: '', score: 7},
    {id: 29, student_id: 3, exercise_id: 5, solution: '', score: 9},
    {id: 30, student_id: 3, exercise_id: 6, solution: '', score: 9},
    {id: 31, student_id: 3, exercise_id: 7, solution: '', score: 3},
    {id: 32, student_id: 3, exercise_id: 8, solution: '', score: 4},
    {id: 33, student_id: 3, exercise_id: 9, solution: '', score: 2},
    {id: 34, student_id: 3, exercise_id: 10, solution: '', score: 10},
    {id: 35, student_id: 3, exercise_id: 11, solution: '', score: 8},
    {id: 36, student_id: 3, exercise_id: 12, solution: '', score: 9},
])

StudentExam.seed([
    {id: 1, student_id: 1, exam_id: 1, note: 3},
    {id: 2, student_id: 1, exam_id: 2, note: 3},
    {id: 3, student_id: 1, exam_id: 3, note: 4},
    {id: 4, student_id: 1, exam_id: 4, note: 4},
    {id: 5, student_id: 2, exam_id: 1, note: 5},
    {id: 6, student_id: 2, exam_id: 2, note: 5},
    {id: 7, student_id: 2, exam_id: 3, note: 5},
    {id: 8, student_id: 2, exam_id: 4, note: 4},
    {id: 9, student_id: 3, exam_id: 1, note: 5},
    {id: 10, student_id: 3, exam_id: 2, note: 4},
    {id: 11, student_id: 3, exam_id: 3, note: 1},
    {id: 12, student_id: 3, exam_id: 4, note: 5}
])
