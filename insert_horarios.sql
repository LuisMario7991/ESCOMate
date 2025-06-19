-- Insertar horarios para Cara Bowen French
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Cara' AND PrimerApe = 'Bowen' AND SegundoApe = 'French'), 
 '2CV4', 'Álgebra lineal', '2202', '', '15:00-16:30', '', '', '15:00-16:30', '16:30-18:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Cara' AND PrimerApe = 'Bowen' AND SegundoApe = 'French'), 
 '6CV1', 'Statistical Tools for Data Analytics', '1013', 'LCD1', '16:30-18:00', '', '16:30-18:00', '16:30-18:00', '');

-- Insertar horarios para Kasper Campbell Houston
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Kasper' AND PrimerApe = 'Campbell' AND SegundoApe = 'Houston'), 
 '2CM3', 'Ingeniería Ética y Sociedad', '2004', '', '7:00-8:30', '', '', '7:00-8:30', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Kasper' AND PrimerApe = 'Campbell' AND SegundoApe = 'Houston'), 
 '2CM5', 'Ingeniería Ética y Sociedad', '2006', '', '8:30-10:00', '', '8:30-10:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Kasper' AND PrimerApe = 'Campbell' AND SegundoApe = 'Houston'), 
 '5AM1', 'Metodología de la Investigación y Divulgación Científica', '4112', '', '', '7:00-8:30', '7:00-8:30', '', '7:00-8:30'),
((SELECT id FROM Profesores WHERE Nombre = 'Kasper' AND PrimerApe = 'Campbell' AND SegundoApe = 'Houston'), 
 '8BM1', 'Trabajo Terminal II', '', '', '', '10:30-12:00', '10:30-12:00', '', '');

-- Insertar horarios para Whoopi Bonner Burris
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Whoopi' AND PrimerApe = 'Bonner' AND SegundoApe = 'Burris'), 
 '1CM2', 'Comunicación oral y escrita', '2203', 'LSOC', '10:30-12:00', '8:30-10:00', '', '10:30-12:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Whoopi' AND PrimerApe = 'Bonner' AND SegundoApe = 'Burris'), 
 '1CM3', 'Comunicación oral y escrita', '2204', 'LSOC', '', '10:30-12:00', '10:30-12:00', '', '10:30-12:00');

-- Insertar horarios para Bethany Ewing Robertson
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Bethany' AND PrimerApe = 'Ewing' AND SegundoApe = 'Robertson'), 
 '5CM1', 'Arquitectura de Computadoras', '1111', 'LE3', '', '7:00-8:30', '7:00-8:30', '', '7:00-8:30'),
((SELECT id FROM Profesores WHERE Nombre = 'Bethany' AND PrimerApe = 'Ewing' AND SegundoApe = 'Robertson'), 
 '6CM2', 'Sistemas en Chip', '1011', 'LE3', '7:00-8:30', '', '', '7:00-8:30', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Bethany' AND PrimerApe = 'Ewing' AND SegundoApe = 'Robertson'), 
 '8BM2', 'Trabajo Terminal II (LAB)', '', '', '', '','', '', '10:00-13:00');

-- Insertar horarios para Elmo Gill Luna
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Elmo' AND PrimerApe = 'Gill' AND SegundoApe = 'Luna'), 
 '3CM3', 'Fundamentos de Diseño Digital', '1007', 'LD2', '', '12:00-13:30', '13:30-15:00', '', '12:00-13:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Elmo' AND PrimerApe = 'Gill' AND SegundoApe = 'Luna'), 
 '3CV3', 'Fundamentos de Diseño Digital', '', 'LD2', '', '13:30-15:00', '13:30-15:00', '', '13:30-15:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Elmo' AND PrimerApe = 'Gill' AND SegundoApe = 'Luna'), 
 '3CM4', 'Fundamentos de Diseño Digital', '', 'LD2', '7:00-8:30', '', '', '7:00-8:30', '7:00-8:30');

-- Insertar horarios para Leigh Knapp Atkinson
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Leigh' AND PrimerApe = 'Knapp' AND SegundoApe = 'Atkinson'), 
 '1CV2', 'Comunicación oral y escrita', '2003', '', '16:30-18:00', '', '16:30-18:00', '16:30-18:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Leigh' AND PrimerApe = 'Knapp' AND SegundoApe = 'Atkinson'), 
 '6BV1', 'Metodología de la Investigación y Divulgación Científica', '4109', '', '18:30-20:00', '16:30-18:00', '', '18:30-20:00', '');

-- Insertar horarios para Cheyenne Mclean Dillon
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Cheyenne' AND PrimerApe = 'Mclean' AND SegundoApe = 'Dillon'), 
 '3CV1', 'Finanzas Empresariales', '1202', 'LGP1', '18:30-20:00', '16:30-18:00', '', '18:30-20:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Cheyenne' AND PrimerApe = 'Mclean' AND SegundoApe = 'Dillon'), 
 '2CV6', 'Fundamentos Económicos', '2006', 'LGP1', '', '18:30-20:00', '18:30-20:00', '', '18:30-20:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Cheyenne' AND PrimerApe = 'Mclean' AND SegundoApe = 'Dillon'), 
 '8CV1', 'Liderazgo Personal', '1014', '', '16:30-18:00', '16:30-18:00','', '16:30-18:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Cheyenne' AND PrimerApe = 'Mclean' AND SegundoApe = 'Dillon'), 
 '4CV2', 'Matemáticas Avanzadas para la Ingeniería', '1207', '', '12:00-13:30', '','16:30-18:00', '16:30-18:00', '');
 
-- Insertar horarios para Jacob Anthony Mckinney
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Jacob' AND PrimerApe = 'Anthony' AND SegundoApe = 'Mckinney'), 
 '6CM1', 'Ingeniería de Software', '', 'LS3', '13:30-15:00', '13:30-15:00L', '', '13:30-15:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Jacob' AND PrimerApe = 'Anthony' AND SegundoApe = 'Mckinney'), 
 '2CM3', 'Algoritmos y Estructuras de Datos', '', 'LP2', '8:30-10:00', '', '8:30-10:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Jacob' AND PrimerApe = 'Anthony' AND SegundoApe = 'Mckinney'), 
 '2AM1', 'Algoritmos y Estructuras de Datos', '', 'LP3', '7:00-8:30', '', '', '7:00-8:30', '8:30-10.00L');

-- Insertar horarios para Damon Sheppard Wall
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Damon' AND PrimerApe = 'Sheppard' AND SegundoApe = 'Wall'), 
 '3CV4', 'Fundamentos de Redes', '2009', 'LE1', '10:30-12:00', '10:30-12:00', '', '', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Damon' AND PrimerApe = 'Sheppard' AND SegundoApe = 'Wall'), 
 '6BM1', 'Arquitectura de Redes', '1105', '', '16:30-18:00', '', '', '16:30-18:00', '');

-- Insertar horarios para Cheryl Fitzgerald Yang
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Cheryl' AND PrimerApe = 'Fitzgerald' AND SegundoApe = 'Yang'), 
 '5AM1', 'Redes Neuronales', '2102', 'LP2', '13:30-15:00', '16:30-18:00', '', '16:30-18:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Cheryl' AND PrimerApe = 'Fitzgerald' AND SegundoApe = 'Yang'), 
 '2CV4', 'Fundamentos de la Inteligencia Artificial', '3001', '', '', '10:30-12:00', '10:30-12:00', '', '10:30-12:00');

-- Insertar horarios para Audrey Reed Blackburn
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Audrey' AND PrimerApe = 'Reed' AND SegundoApe = 'Blackburn'), 
 '4CM5', 'Sistemas Operativos Avanzados', '2208', '', '8:30-10:00', '', '8:30-10:00', '10:30-12:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Audrey' AND PrimerApe = 'Reed' AND SegundoApe = 'Blackburn'), 
 '3BM2', 'Arquitectura de Computadoras', '1012', 'LIA1', '16:30-18:00', '', '16:30-18:00', '', '');

-- Insertar horarios para Melyssa Duncan Faulner
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Melyssa' AND PrimerApe = 'Duncan' AND SegundoApe = 'Faulner'), 
 '2AM2', 'Lenguajes de Programación', '2107', 'LGP1', '8:30-10:00', '10:30-12:00', '', '10:30-12:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Melyssa' AND PrimerApe = 'Duncan' AND SegundoApe = 'Faulner'), 
 '5CM3', 'Programación Concurrente', '1206', '', '12:00-13:30', '12:00-13:30', '12:00-13:30', '', '12:00-13:30');

-- Insertar horarios para Gay Finley Burt
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Gay' AND PrimerApe = 'Finley' AND SegundoApe = 'Burt'), 
 '2AM3', 'Teoría de Computación', '2001', '', '10:30-12:00', '', '10:30-12:00', '', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Gay' AND PrimerApe = 'Finley' AND SegundoApe = 'Burt'), 
 '4CM2', 'Arquitectura de Microprocesadores', '2103', 'LE2', '', '16:30-18:00', '', '16:30-18:00', '');

-- Insertar horarios para Raja Woods Callahan
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Raja' AND PrimerApe = 'Woods' AND SegundoApe = 'Callahan'), 
 '6AM1', 'Desarrollo de Software en la Nube', '1011', '', '8:30-10:00', '', '8:30-10:00', '10:30-12:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Raja' AND PrimerApe = 'Woods' AND SegundoApe = 'Callahan'), 
 '7BM1', 'Sistemas Distribuidos', '2009', '', '16:30-18:00', '', '16:30-18:00', '', '16:30-18:00');

-- Insertar horarios para Portia Kidd Vanng
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Portia' AND PrimerApe = 'Kidd' AND SegundoApe = 'Vanng'), 
 '2CV3', 'Fundamentos de Cálculo', '2012', '', '10:30-12:00', '', '10:30-12:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Portia' AND PrimerApe = 'Kidd' AND SegundoApe = 'Vanng'), 
 '3AM1', 'Métodos Numéricos', '2023', '', '13:30-15:00', '13:30-15:00', '13:30-15:00', '', '13:30-15:00');

-- Insertar horarios para Maite Pierce Wagner
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Maite' AND PrimerApe = 'Pierce' AND SegundoApe = 'Wagner'), 
 '5CM1', 'Redes de Computadoras', '1012', 'LIA1', '10:30-12:00', '', '', '10:30-12:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Maite' AND PrimerApe = 'Pierce' AND SegundoApe = 'Wagner'), 
 '6CV3', 'Sistemas Operativos Avanzados', '2206', '', '', '16:30-18:00', '', '16:30-18:00', '');

-- Insertar horarios para Kristen Robinson Maxwell
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Kristen' AND PrimerApe = 'Robinson' AND SegundoApe = 'Maxwell'), 
 '3CV4', 'Lenguajes de Programación', '1103', 'LS3', '7:00-8:30', '', '', '7:00-8:30', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Kristen' AND PrimerApe = 'Robinson' AND SegundoApe = 'Maxwell'), 
 '4CM1', 'Análisis de Algoritmos', '1205', '', '16:30-18:00', '', '16:30-18:00', '16:30-18:00', '');

-- Insertar horarios para Isaiah Hunter Vinson
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Isaiah' AND PrimerApe = 'Hunter' AND SegundoApe = 'Vinson'), 
 '3CV2', 'Estructuras de Datos Avanzadas', '1012', '', '8:30-10:00', '', '', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Isaiah' AND PrimerApe = 'Hunter' AND SegundoApe = 'Vinson'), 
 '2AM1', 'Algoritmos Paralelos', '2007', '', '10:30-12:00', '', '', '10:30-12:00', '10:30-12:00');

-- Insertar horarios para Rylee Valdez Garcia
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Rylee' AND PrimerApe = 'Valdez' AND SegundoApe = 'Garcia'), 
 '2CV3', 'Física Computacional', '2023', '', '10:30-12:00', '', '10:30-12:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Rylee' AND PrimerApe = 'Valdez' AND SegundoApe = 'Garcia'), 
 '4AM2', 'Fundamentos de Redes de Computadoras', '2004', '', '12:00-13:30', '12:00-13:30', '', '', '12:00-13:30');

-- Insertar horarios para Jillian Mcleod Chang
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Jillian' AND PrimerApe = 'Mcleod' AND SegundoApe = 'Chang'), 
 '2AM1', 'Redes de Computadoras', '2006', '', '16:30-18:00', '', '16:30-18:00', '', '16:30-18:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Jillian' AND PrimerApe = 'Mcleod' AND SegundoApe = 'Chang'), 
 '6CV4', 'Sistemas Operativos Avanzados', '2012', 'LE3', '', '13:30-15:00', '', '13:30-15:00', '13:30-15:00');

-- Insertar horarios para Dana Porter Bauer
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Dana' AND PrimerApe = 'Porter' AND SegundoApe = 'Bauer'), 
 '2AM3', 'Diseño de Software', '1007', 'LP3', '12:00-13:30', '12:00-13:30', '12:00-13:30', '', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Dana' AND PrimerApe = 'Porter' AND SegundoApe = 'Bauer'), 
 '4CV4', 'Estudio de Patrones', '1209', '', '7:00-8:30', '7:00-8:30', '', '7:00-8:30', '');

-- Insertar horarios para Grant Morton Havs
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Grant' AND PrimerApe = 'Morton' AND SegundoApe = 'Havs'), 
 '3CV2', 'Sistemas de Bases de Datos', '2008', '', '8:30-10:00', '8:30-10:00', '8:30-10:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Grant' AND PrimerApe = 'Morton' AND SegundoApe = 'Havs'), 
 '6CM2', 'Algoritmos de Optimización', '1010', 'LIA1', '10:30-12:00', '', '10:30-12:00', '', '');

-- Insertar horarios para Rinah Hurst Manning
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Rinah' AND PrimerApe = 'Hurst' AND SegundoApe = 'Manning'), 
 '4CM1', 'Programación Concurrente', '2205', '', '10:30-12:00', '', '10:30-12:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Rinah' AND PrimerApe = 'Hurst' AND SegundoApe = 'Manning'), 
 '6CM3', 'Estructuras de Datos Avanzadas', '1211', '', '', '13:30-15:00', '13:30-15:00', '', '13:30-15:00');

-- Insertar horarios para Barclay Henson Hughes
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Barclay' AND PrimerApe = 'Henson' AND SegundoApe = 'Hughes'), 
 '5CV1', 'Seguridad en Redes', '2002', 'LS4', '16:30-18:00', '16:30-18:00', '16:30-18:00', '16:30-18:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Barclay' AND PrimerApe = 'Henson' AND SegundoApe = 'Hughes'), 
 '3AM2', 'Redes de Comunicación', '2024', '', '8:30-10:00', '8:30-10:00', '8:30-10:00', '', '8:30-10:00');

-- Insertar horarios para Cooper Clay Montgomery
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Cooper' AND PrimerApe = 'Clay' AND SegundoApe = 'Montgomery'), 
 '2CV5', 'Algoritmos de Optimización', '1102', '', '7:00-8:30', '7:00-8:30', '', '7:00-8:30', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Cooper' AND PrimerApe = 'Clay' AND SegundoApe = 'Montgomery'), 
 '6AM3', 'Computación Paralela', '2209', 'LE2', '', '13:30-15:00', '13:30-15:00', '', '13:30-15:00');

-- Insertar horarios para Talon Valencia Frazier
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Talon' AND PrimerApe = 'Valencia' AND SegundoApe = 'Frazier'), 
 '6CV4', 'Inteligencia Artificial', '2009', 'LE1', '13:30-15:00', '', '13:30-15:00', '', '13:30-15:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Talon' AND PrimerApe = 'Valencia' AND SegundoApe = 'Frazier'), 
 '3AM1', 'Fundamentos de la Computación', '2210', '', '', '8:30-10:00', '8:30-10:00', '8:30-10:00', '');

-- Insertar horarios para Elmo Martinez Dodson
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Elmo' AND PrimerApe = 'Martinez' AND SegundoApe = 'Dodson'), 
 '3CV4', 'Bases de Datos Avanzadas', '2004', '', '13:30-15:00', '', '13:30-15:00', '13:30-15:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Elmo' AND PrimerApe = 'Martinez' AND SegundoApe = 'Dodson'), 
 '6AM2', 'Redes Avanzadas', '2011', 'LIA1', '', '16:30-18:00', '16:30-18:00', '16:30-18:00', '16:30-18:00');

-- Insertar horarios para Ivory Cain Holder
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Ivory' AND PrimerApe = 'Cain' AND SegundoApe = 'Holder'), 
 '4AM1', 'Modelado y Simulación de Sistemas', '2023', '', '7:00-8:30', '7:00-8:30', '7:00-8:30', '', '7:00-8:30'),
((SELECT id FROM Profesores WHERE Nombre = 'Ivory' AND PrimerApe = 'Cain' AND SegundoApe = 'Holder'), 
 '6CM2', 'Matemáticas Discretas', '2205', '', '12:00-13:30', '13:30-15:00', '12:00-13:30', '13:30-15:00', '');

-- Insertar horarios para Meghan Nunez Collins
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Meghan' AND PrimerApe = 'Nunez' AND SegundoApe = 'Collins'), 
 '5CV4', 'Computación Cuántica', '1011', 'LIA1', '10:30-12:00', '16:30-18:00', '', '', '10:30-12:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Meghan' AND PrimerApe = 'Nunez' AND SegundoApe = 'Collins'), 
 '3BM3', 'Análisis de Algoritmos', '1212', '', '13:30-15:00', '16:30-18:00', '', '16:30-18:00', '13:30-15:00');

-- Insertar horarios para Byron Kim Klein
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Byron' AND PrimerApe = 'Kim' AND SegundoApe = 'Klein'), 
 '3CV1', 'Física Computacional', '2204', '', '8:30-10:00', '8:30-10:00', '8:30-10:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Byron' AND PrimerApe = 'Kim' AND SegundoApe = 'Klein'), 
 '2AM2', 'Análisis Numérico', '2024', '', '10:30-12:00', '12:00-13:30', '10:30-12:00', '', '10:30-12:00');

-- Insertar horarios para Amity Hutchinson Obrien
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Amity' AND PrimerApe = 'Hutchinson' AND SegundoApe = 'Obrien'), 
 '4CM1', 'Diseño de Computadoras', '2101', '', '7:00-8:30', '8:30-10:00', '7:00-8:30', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Amity' AND PrimerApe = 'Hutchinson' AND SegundoApe = 'Obrien'), 
 '6AM3', 'Desarrollo de Software en la Nube', '1012', 'LIA1', '16:30-18:00', '', '16:30-18:00', '', '16:30-18:00');

-- Insertar horarios para Eugenia Lane Beach
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Eugenia' AND PrimerApe = 'Lane' AND SegundoApe = 'Beach'), 
 '2CV1', 'Bases de Datos', '2001', 'LS3', '8:30-10:00', '10:30-12:00', '', '10:30-12:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Eugenia' AND PrimerApe = 'Lane' AND SegundoApe = 'Beach'), 
 '5BM1', 'Cálculo Avanzado', '2209', '', '12:00-13:30', '12:00-13:30', '12:00-13:30', '12:00-13:30', '');

-- Insertar horarios para Tana French Jimenez
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Tana' AND PrimerApe = 'French' AND SegundoApe = 'Jimenez'), 
 '6CV1', 'Teoría de Compiladores', '2208', '', '13:30-15:00', '', '13:30-15:00', '', '13:30-15:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Tana' AND PrimerApe = 'French' AND SegundoApe = 'Jimenez'), 
 '2CV2', 'Teoría de Lenguajes', '1206', 'LP2', '8:30-10:00', '', '8:30-10:00', '8:30-10:00', '');

-- Insertar horarios para Deborah Glover Donovan
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Deborah' AND PrimerApe = 'Glover' AND SegundoApe = 'Donovan'), 
 '5CV2', 'Redes de Sensores Inalámbricos', '2204', 'LE1', '7:00-8:30', '', '', '7:00-8:30', '10:30-12:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Deborah' AND PrimerApe = 'Glover' AND SegundoApe = 'Donovan'), 
 '3AM1', 'Control de Sistemas', '1013', 'LE2', '12:00-13:30', '16:30-18:00', '13:30-15:00', '', '13:30-15:00');

-- Insertar horarios para Kenneth Hodges Hensley
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Kenneth' AND PrimerApe = 'Hodges' AND SegundoApe = 'Hensley'), 
 '3AM3', 'Computación Gráfica', '2207', 'LS1', '8:30-10:00', '8:30-10:00', '', '', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Kenneth' AND PrimerApe = 'Hodges' AND SegundoApe = 'Hensley'), 
 '6CV2', 'Algoritmos de Búsqueda y Optimización', '2105', '', '16:30-18:00', '', '16:30-18:00', '16:30-18:00', '');

-- Insertar horarios para Dominic Cannon Weeks
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Dominic' AND PrimerApe = 'Cannon' AND SegundoApe = 'Weeks'), 
 '4AM2', 'Estructuras de Datos Avanzadas', '2013', 'LE4', '7:00-8:30', '', '7:00-8:30', '', '7:00-8:30'),
((SELECT id FROM Profesores WHERE Nombre = 'Dominic' AND PrimerApe = 'Cannon' AND SegundoApe = 'Weeks'), 
 '6CV3', 'Ingeniería de Software Avanzada', '2201', '', '13:30-15:00', '', '13:30-15:00', '13:30-15:00', '');

-- Insertar horarios para Anastasia Glenn Daugherty
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Anastasia' AND PrimerApe = 'Glenn' AND SegundoApe = 'Daugherty'), 
 '5CM1', 'Redes de Computadoras', '1205', 'LE1', '7:00-8:30', '', '7:00-8:30', '8:30-10:00', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Anastasia' AND PrimerApe = 'Glenn' AND SegundoApe = 'Daugherty'), 
 '6AM2', 'Algoritmos de Optimización', '2104', '', '13:30-15:00', '', '13:30-15:00', '13:30-15:00', '');

-- Insertar horarios para Malik Neal Landry
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Malik' AND PrimerApe = 'Neal' AND SegundoApe = 'Landry'), 
 '3CV2', 'Fundamentos de Inteligencia Artificial', '1006', '', '10:30-12:00', '10:30-12:00', '10:30-12:00', '12:00-13:30', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Malik' AND PrimerApe = 'Neal' AND SegundoApe = 'Landry'), 
 '2AM1', 'Metodología de la Investigación', '2009', '', '', '13:30-15:00', '13:30-15:00', '', '13:30-15:00');

-- Insertar horarios para Michael Crosby Lara
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Michael' AND PrimerApe = 'Crosby' AND SegundoApe = 'Lara'), 
 '6CV5', 'Seguridad en Sistemas Operativos', '1015', 'LS3', '8:30-10:00', '', '', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Michael' AND PrimerApe = 'Crosby' AND SegundoApe = 'Lara'), 
 '4AM1', 'Redes Neuronales', '2025', '', '16:30-18:00', '16:30-18:00', '', '16:30-18:00', '');

-- Insertar horarios para Cain Porter Boyd
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Cain' AND PrimerApe = 'Porter' AND SegundoApe = 'Boyd'), 
 '6CV4', 'Redes de Computadoras', '2003', 'LE3', '10:30-12:00', '8:30-10:00', '10:30-12:00', '8:30-10:00', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Cain' AND PrimerApe = 'Porter' AND SegundoApe = 'Boyd'), 
 '5BM1', 'Algoritmos Paralelos', '2012', 'LE2', '12:00-13:30', '13:30-15:00', '', '', '12:00-13:30');

-- Insertar horarios para Giacomo Simmons Gates
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Giacomo' AND PrimerApe = 'Simmons' AND SegundoApe = 'Gates'), 
 '4CV3', 'Ingeniería de Software', '2010', 'LE1', '7:00-8:30', '8:30-10:00', '', '7:00-8:30', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Giacomo' AND PrimerApe = 'Simmons' AND SegundoApe = 'Gates'), 
 '5CV4', 'Redes de Sensores Inalámbricos', '2022', '', '12:00-13:30', '13:30-15:00', '12:00-13:30', '16:30-18:00', '');

-- Insertar horarios para Yvette Peterson George
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Yvette' AND PrimerApe = 'Peterson' AND SegundoApe = 'George'), 
 '3AM1', 'Redes Neuronales', '2001', '', '8:30-10:00', '10:30-12:00', '10:30-12:00', '', '12:00-13:30'),
((SELECT id FROM Profesores WHERE Nombre = 'Yvette' AND PrimerApe = 'Peterson' AND SegundoApe = 'George'), 
 '4BM2', 'Computación en la Nube', '2210', '', '13:30-15:00', '13:30-15:00', '13:30-15:00', '10:30-12:00', '');

-- Insertar horarios para Ashley Jackson Glenn
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Ashley' AND PrimerApe = 'Jackson' AND SegundoApe = 'Glenn'), 
 '2AM1', 'Algoritmos de Computación', '2005', '', '16:30-18:00', '8:30-10:00', '8:30-10:00', '16:30-18:00', '8:30-10:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Ashley' AND PrimerApe = 'Jackson' AND SegundoApe = 'Glenn'), 
 '4CV5', 'Arquitectura de Computadoras', '2008', '', '', '16:30-18:00', '16:30-18:00', '', '10:30-12:00');

-- Insertar horarios para Asher Coffey Fischer
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Asher' AND PrimerApe = 'Coffey' AND SegundoApe = 'Fischer'), 
 '5CM2', 'Lenguajes de Programación', '1004', 'LE2', '7:00-8:30', '8:30-10:00', '7:00-8:30', '10:30-12:00', '7:00-8:30'),
((SELECT id FROM Profesores WHERE Nombre = 'Asher' AND PrimerApe = 'Coffey' AND SegundoApe = 'Fischer'), 
 '6CV2', 'Redes y Comunicaciones', '2012', '', '10:30-12:00', '12:00-13:30', '', '16:30-18:00', '16:30-18:00');

-- Insertar horarios para Tatum Rasmussen Silva
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Tatum' AND PrimerApe = 'Rasmusenn' AND SegundoApe = 'Silva'), 
 '3CV4', 'Sistemas de Bases de Datos', '2101', '', '7:00-8:30', '8:30-10:00', '8:30-10:00', '', '10:30-12:00'),
((SELECT id FROM Profesores WHERE Nombre = 'Tatum' AND PrimerApe = 'Rasmusenn' AND SegundoApe = 'Silva'), 
 '5AM2', 'Arquitectura de Software', '2022', '', '13:30-15:00', '13:30-15:00', '', '13:30-15:00', '');

-- Insertar horarios para Isadora Valenzuela Lara
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Isadora' AND PrimerApe = 'Valenzuela' AND SegundoApe = 'Lara'), 
 '2CV1', 'Lenguajes de Programación', '2005', '', '10:30-12:00', '8:30-10:00', '8:30-10:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Isadora' AND PrimerApe = 'Valenzuela' AND SegundoApe = 'Lara'), 
 '5AM1', 'Sistemas Embebidos', '2010', 'LE3', '16:30-18:00', '', '16:30-18:00', '', '16:30-18:00');

-- Insertar horarios para Jesse Kaufman Hutchinson
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Jesse' AND PrimerApe = 'Kaufman' AND SegundoApe = 'Hutchinson'), 
 '6CV1', 'Algoritmos Avanzados', '2001', '', '10:30-12:00', '10:30-12:00', '10:30-12:00', '10:30-12:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Jesse' AND PrimerApe = 'Kaufman' AND SegundoApe = 'Hutchinson'), 
 '4AM2', 'Sistemas Distribuidos', '2103', 'LIA1', '', '16:30-18:00', '16:30-18:00', '', '16:30-18:00');

-- Insertar horarios para Minerva Murray Hunter
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Minerva' AND PrimerApe = 'Murray' AND SegundoApe = 'Hunter'), 
 '5CM1', 'Redes de Computadoras Avanzadas', '1207', 'LIA1', '13:30-15:00', '', '13:30-15:00', '', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Minerva' AND PrimerApe = 'Murray' AND SegundoApe = 'Hunter'), 
 '2AM2', 'Redes Neuronales', '2202', '', '8:30-10:00', '', '8:30-10:00', '8:30-10:00', '');

-- Insertar horarios para Aretha Schroeder Irwin
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Aretha' AND PrimerApe = 'Schroeder' AND SegundoApe = 'Irwin'), 
 '2CV5', 'Métodos Numéricos', '1010', '', '8:30-10:00', '10:30-12:00', '8:30-10:00', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Aretha' AND PrimerApe = 'Schroeder' AND SegundoApe = 'Irwin'), 
 '5BM2', 'Algoritmos Avanzados', '2208', 'LE2', '16:30-18:00', '', '16:30-18:00', '', '16:30-18:00');

-- Insertar horarios para Clark Winters Whitfield
INSERT INTO Horarios (profesor_id, Grupo, Unidad, Salon, Lab, Lunes, Martes, Miercoles, Jueves, Viernes) VALUES
((SELECT id FROM Profesores WHERE Nombre = 'Clark' AND PrimerApe = 'Winters' AND SegundoApe = 'Whitflied'), 
 '2AM1', 'Cálculo Avanzado', '1209', '', '7:00-8:30', '7:00-8:30', '7:00-8:30', '8:30-10:00', ''),
((SELECT id FROM Profesores WHERE Nombre = 'Clark' AND PrimerApe = 'Winters' AND SegundoApe = 'Whitflied'), 
 '6CV1', 'Inteligencia Artificial y Aprendizaje Automático', '1013', 'LIA1', '10:30-12:00', '', '10:30-12:00', '16:30-18:00', '');

