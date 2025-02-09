PGDMP     %                    {         
   university    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    25005 
   university    DATABASE     �   CREATE DATABASE university WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1256';
    DROP DATABASE university;
                postgres    false            �            1259    25021    classes    TABLE     �   CREATE TABLE public.classes (
    classid integer NOT NULL,
    courseid integer,
    professorid integer,
    schedule character varying(100)
);
    DROP TABLE public.classes;
       public         heap    postgres    false            �            1259    25016    courses    TABLE     {   CREATE TABLE public.courses (
    courseid integer NOT NULL,
    coursename character varying(100),
    credits integer
);
    DROP TABLE public.courses;
       public         heap    postgres    false            �            1259    25036    enrollments    TABLE     �   CREATE TABLE public.enrollments (
    enrollmentid integer NOT NULL,
    studentid integer,
    classid integer,
    grade double precision
);
    DROP TABLE public.enrollments;
       public         heap    postgres    false            �            1259    25011 
   professors    TABLE     �   CREATE TABLE public.professors (
    professorid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    hiredate date
);
    DROP TABLE public.professors;
       public         heap    postgres    false            �            1259    25006    students    TABLE     �   CREATE TABLE public.students (
    studentid integer NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    birthdate date,
    enrollmentdate date
);
    DROP TABLE public.students;
       public         heap    postgres    false                      0    25021    classes 
   TABLE DATA           K   COPY public.classes (classid, courseid, professorid, schedule) FROM stdin;
    public          postgres    false    217   7                 0    25016    courses 
   TABLE DATA           @   COPY public.courses (courseid, coursename, credits) FROM stdin;
    public          postgres    false    216   a                 0    25036    enrollments 
   TABLE DATA           N   COPY public.enrollments (enrollmentid, studentid, classid, grade) FROM stdin;
    public          postgres    false    218   �                 0    25011 
   professors 
   TABLE DATA           P   COPY public.professors (professorid, firstname, lastname, hiredate) FROM stdin;
    public          postgres    false    215   �                 0    25006    students 
   TABLE DATA           ]   COPY public.students (studentid, firstname, lastname, birthdate, enrollmentdate) FROM stdin;
    public          postgres    false    214   �       {           2606    25025    classes classes_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (classid);
 >   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
       public            postgres    false    217            y           2606    25020    courses courses_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (courseid);
 >   ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
       public            postgres    false    216            }           2606    25040    enrollments enrollments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (enrollmentid);
 F   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
       public            postgres    false    218            w           2606    25015    professors professors_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (professorid);
 D   ALTER TABLE ONLY public.professors DROP CONSTRAINT professors_pkey;
       public            postgres    false    215            u           2606    25010    students students_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (studentid);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    214            ~           2606    25026    classes classes_courseid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_courseid_fkey FOREIGN KEY (courseid) REFERENCES public.courses(courseid);
 G   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_courseid_fkey;
       public          postgres    false    217    3193    216                       2606    25031     classes classes_professorid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_professorid_fkey FOREIGN KEY (professorid) REFERENCES public.professors(professorid);
 J   ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_professorid_fkey;
       public          postgres    false    217    215    3191            �           2606    25046 $   enrollments enrollments_classid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_classid_fkey FOREIGN KEY (classid) REFERENCES public.classes(classid);
 N   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_classid_fkey;
       public          postgres    false    218    3195    217            �           2606    25041 &   enrollments enrollments_studentid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_studentid_fkey FOREIGN KEY (studentid) REFERENCES public.students(studentid);
 P   ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_studentid_fkey;
       public          postgres    false    218    214    3189                  x�3�4B_?]]C�=... #�>             x�3�t��/H�LÖOILI�4����� \��            x�3�4B#.#N#Ӝ+F��� #V�         *   x�3��HL�H��L)�+NLMM�44���50�50����� ��k         @   x�3�LK,I�M��LLJ��44�0�50�522--u́<.#�ĜL�sc]c]#cd1z\\\ �se     