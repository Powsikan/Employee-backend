PGDMP     !                    x            employee-management    9.4.26    12.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16393    employee-management    DATABASE     �   CREATE DATABASE "employee-management" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 %   DROP DATABASE "employee-management";
                postgres    false            �           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    16505    employee    TABLE     �   CREATE TABLE public.employee (
    id bigint NOT NULL,
    dob character varying(255),
    email character varying(255),
    name character varying(255)
);
    DROP TABLE public.employee;
       public            postgres    false            �            1259    16513    employee_skills    TABLE     l   CREATE TABLE public.employee_skills (
    employee_id bigint NOT NULL,
    skills character varying(255)
);
 #   DROP TABLE public.employee_skills;
       public            postgres    false            �            1259    16503    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public          postgres    false            �          0    16505    employee 
   TABLE DATA           8   COPY public.employee (id, dob, email, name) FROM stdin;
    public          postgres    false    174   y       �          0    16513    employee_skills 
   TABLE DATA           >   COPY public.employee_skills (employee_id, skills) FROM stdin;
    public          postgres    false    175   �       �           0    0    hibernate_sequence    SEQUENCE SET     @   SELECT pg_catalog.setval('public.hibernate_sequence', 1, true);
          public          postgres    false    173            _           2606    16512    employee employee_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    174            `           2606    16516 +   employee_skills fknepe51hewn4dd673e3qk1v2qx    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_skills
    ADD CONSTRAINT fknepe51hewn4dd673e3qk1v2qx FOREIGN KEY (employee_id) REFERENCES public.employee(id);
 U   ALTER TABLE ONLY public.employee_skills DROP CONSTRAINT fknepe51hewn4dd673e3qk1v2qx;
       public          postgres    false    174    1887    175            �   1   x�3�40�30�3��4�,�//���s3s���s!bىy�\1z\\\ =h�      �      x�3��J,K����� ��     