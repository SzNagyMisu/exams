students = [
    {id: 1, name: 'Vizsgázó Béla', initials: 'VB'},
    {id: 2, name: 'Számotadó Aladár', initials: 'SzA'},
    {id: 3, name: 'Dolgozatíró Éva', initials: 'DE'}
]

exams = [
    {id: 1, year: 2015, number: 1},
    {id: 2, year: 2015, number: 2},
    {id: 3, year: 2016, number: 1},
    {id: 4, year: 2016, number: 2}
]

exercises = [
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
]

student_exercises = [ # todo score
    {id: 1, student_id: 1, exercise_id: 1, solution: '', score: 0},
    {id: 2, student_id: 1, exercise_id: 2, solution: '', score: 0},
    {id: 3, student_id: 1, exercise_id: 3, solution: '', score: 0},
    {id: 4, student_id: 1, exercise_id: 4, solution: '', score: 0},
    {id: 5, student_id: 1, exercise_id: 5, solution: '', score: 0},
    {id: 6, student_id: 1, exercise_id: 6, solution: '', score: 0},
    {id: 7, student_id: 1, exercise_id: 7, solution: '', score: 0},
    {id: 8, student_id: 1, exercise_id: 8, solution: '', score: 0},
    {id: 9, student_id: 1, exercise_id: 9, solution: '', score: 0},
    {id: 10, student_id: 1, exercise_id: 10,solution: '', score: 0},
    {id: 11, student_id: 1, exercise_id: 11,solution: '', score: 0},
    {id: 12, student_id: 1, exercise_id: 12,solution: '', score: 0},
    {id: 1, student_id: 2, exercise_id: 1, solution: '', score: 0},
    {id: 2, student_id: 2, exercise_id: 2, solution: '', score: 0},
    {id: 3, student_id: 2, exercise_id: 3, solution: '', score: 0},
    {id: 4, student_id: 2, exercise_id: 4, solution: '', score: 0},
    {id: 5, student_id: 2, exercise_id: 5, solution: '', score: 0},
    {id: 6, student_id: 2, exercise_id: 6, solution: '', score: 0},
    {id: 7, student_id: 2, exercise_id: 7, solution: '', score: 0},
    {id: 8, student_id: 2, exercise_id: 8, solution: '', score: 0},
    {id: 9, student_id: 2, exercise_id: 9, solution: '', score: 0},
    {id: 10, student_id: 2, exercise_id: 10,solution: '', score: 0},
    {id: 11, student_id: 2, exercise_id: 11,solution: '', score: 0},
    {id: 12, student_id: 2, exercise_id: 12,solution: '', score: 0},
    {id: 1, student_id: 3, exercise_id: 1, solution: '', score: 0},
    {id: 2, student_id: 3, exercise_id: 2, solution: '', score: 0},
    {id: 3, student_id: 3, exercise_id: 3, solution: '', score: 0},
    {id: 4, student_id: 3, exercise_id: 4, solution: '', score: 0},
    {id: 5, student_id: 3, exercise_id: 5, solution: '', score: 0},
    {id: 6, student_id: 3, exercise_id: 6, solution: '', score: 0},
    {id: 7, student_id: 3, exercise_id: 7, solution: '', score: 0},
    {id: 8, student_id: 3, exercise_id: 8, solution: '', score: 0},
    {id: 9, student_id: 3, exercise_id: 9, solution: '', score: 0},
    {id: 10, student_id: 3, exercise_id: 10,solution: '', score: 0},
    {id: 11, student_id: 3, exercise_id: 11,solution: '', score: 0},
    {id: 12, student_id: 3, exercise_id: 12,solution: '', score: 0},
]
