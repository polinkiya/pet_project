PGDMP                   
    {            gym_db    15.5 (Homebrew)    16.0 7    g           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            h           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            i           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            j           1262    16389    gym_db    DATABASE     h   CREATE DATABASE gym_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE gym_db;
                postgres    false            �            1259    16423    activity_status    TABLE     |   CREATE TABLE public.activity_status (
    id_activity_status integer NOT NULL,
    name character varying(40)[] NOT NULL
);
 #   DROP TABLE public.activity_status;
       public         heap    postgres    false            �            1259    16422 &   activity_status_id_activity_status_seq    SEQUENCE     �   ALTER TABLE public.activity_status ALTER COLUMN id_activity_status ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.activity_status_id_activity_status_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16486 
   attendance    TABLE     �   CREATE TABLE public.attendance (
    attendance_id integer NOT NULL,
    pass_id integer NOT NULL,
    date_of_visit date NOT NULL,
    time_of_visit_from time with time zone NOT NULL,
    time_of_vitit_to time with time zone NOT NULL
);
    DROP TABLE public.attendance;
       public         heap    postgres    false            �            1259    16485    attendance_attendance_id_seq    SEQUENCE     �   ALTER TABLE public.attendance ALTER COLUMN attendance_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.attendance_attendance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    16405    clients    TABLE     )  CREATE TABLE public.clients (
    client_id integer NOT NULL,
    birth_date date NOT NULL,
    surname character(40) NOT NULL,
    name character(40) NOT NULL,
    patronymic character(40),
    e_mail character(40),
    phone_number character(10) NOT NULL,
    passport character(10) NOT NULL
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    16404    clients_client_id_seq    SEQUENCE     �   ALTER TABLE public.clients ALTER COLUMN client_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.clients_client_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16437    contract    TABLE     o   CREATE TABLE public.contract (
    number_id integer NOT NULL,
    validity_from date,
    validity_to date
);
    DROP TABLE public.contract;
       public         heap    postgres    false            �            1259    16436    contract_number_id_seq    SEQUENCE     �   ALTER TABLE public.contract ALTER COLUMN number_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contract_number_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    16465    pass    TABLE     �   CREATE TABLE public.pass (
    pass_id integer NOT NULL,
    tariff_id integer NOT NULL,
    contract_number integer NOT NULL,
    activate_date date NOT NULL,
    number_of_visits smallint NOT NULL,
    client_id integer NOT NULL
);
    DROP TABLE public.pass;
       public         heap    postgres    false            �            1259    16464    pass_pass_id_seq    SEQUENCE     �   ALTER TABLE public.pass ALTER COLUMN pass_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pass_pass_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    16496    pass_status    TABLE     �   CREATE TABLE public.pass_status (
    status_pass_id integer NOT NULL,
    activity_status integer NOT NULL,
    date_of_change date NOT NULL
);
    DROP TABLE public.pass_status;
       public         heap    postgres    false            �            1259    16443    receipts    TABLE     �   CREATE TABLE public.receipts (
    receipt_id integer NOT NULL,
    contract_id integer NOT NULL,
    price integer NOT NULL,
    date date NOT NULL,
    status smallint NOT NULL
);
    DROP TABLE public.receipts;
       public         heap    postgres    false            �            1259    16442    receipts_receipt_id_seq    SEQUENCE     �   ALTER TABLE public.receipts ALTER COLUMN receipt_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.receipts_receipt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16454    tariffs    TABLE     �   CREATE TABLE public.tariffs (
    tariff_id integer NOT NULL,
    tariff_type integer NOT NULL,
    price integer NOT NULL,
    number_of_visits smallint NOT NULL,
    duration smallint NOT NULL,
    name character(40) NOT NULL
);
    DROP TABLE public.tariffs;
       public         heap    postgres    false            �            1259    16453    tariffs_tariff_id_seq    SEQUENCE     �   ALTER TABLE public.tariffs ALTER COLUMN tariff_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tariffs_tariff_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    16417    type_tariff    TABLE     c   CREATE TABLE public.type_tariff (
    id_type integer NOT NULL,
    name character(40) NOT NULL
);
    DROP TABLE public.type_tariff;
       public         heap    postgres    false            �            1259    16416    type_tariff_id_type_seq    SEQUENCE     �   ALTER TABLE public.type_tariff ALTER COLUMN id_type ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.type_tariff_id_type_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            Y          0    16423    activity_status 
   TABLE DATA           C   COPY public.activity_status (id_activity_status, name) FROM stdin;
    public          postgres    false    219   A       c          0    16486 
   attendance 
   TABLE DATA           q   COPY public.attendance (attendance_id, pass_id, date_of_visit, time_of_visit_from, time_of_vitit_to) FROM stdin;
    public          postgres    false    229   $A       U          0    16405    clients 
   TABLE DATA           s   COPY public.clients (client_id, birth_date, surname, name, patronymic, e_mail, phone_number, passport) FROM stdin;
    public          postgres    false    215   AA       [          0    16437    contract 
   TABLE DATA           I   COPY public.contract (number_id, validity_from, validity_to) FROM stdin;
    public          postgres    false    221   �A       a          0    16465    pass 
   TABLE DATA           o   COPY public.pass (pass_id, tariff_id, contract_number, activate_date, number_of_visits, client_id) FROM stdin;
    public          postgres    false    227   B       d          0    16496    pass_status 
   TABLE DATA           V   COPY public.pass_status (status_pass_id, activity_status, date_of_change) FROM stdin;
    public          postgres    false    230   6B       ]          0    16443    receipts 
   TABLE DATA           P   COPY public.receipts (receipt_id, contract_id, price, date, status) FROM stdin;
    public          postgres    false    223   SB       _          0    16454    tariffs 
   TABLE DATA           b   COPY public.tariffs (tariff_id, tariff_type, price, number_of_visits, duration, name) FROM stdin;
    public          postgres    false    225   pB       W          0    16417    type_tariff 
   TABLE DATA           4   COPY public.type_tariff (id_type, name) FROM stdin;
    public          postgres    false    217   �B       k           0    0 &   activity_status_id_activity_status_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.activity_status_id_activity_status_seq', 1, false);
          public          postgres    false    218            l           0    0    attendance_attendance_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.attendance_attendance_id_seq', 1, false);
          public          postgres    false    228            m           0    0    clients_client_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.clients_client_id_seq', 4, true);
          public          postgres    false    214            n           0    0    contract_number_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.contract_number_id_seq', 1, false);
          public          postgres    false    220            o           0    0    pass_pass_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.pass_pass_id_seq', 1, false);
          public          postgres    false    226            p           0    0    receipts_receipt_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.receipts_receipt_id_seq', 1, false);
          public          postgres    false    222            q           0    0    tariffs_tariff_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tariffs_tariff_id_seq', 1, false);
          public          postgres    false    224            r           0    0    type_tariff_id_type_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.type_tariff_id_type_seq', 1, false);
          public          postgres    false    216            �           2606    16409    clients Client_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY (client_id);
 ?   ALTER TABLE ONLY public.clients DROP CONSTRAINT "Client_pkey";
       public            postgres    false    215            �           2606    16429 $   activity_status activity_status_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.activity_status
    ADD CONSTRAINT activity_status_pkey PRIMARY KEY (id_activity_status);
 N   ALTER TABLE ONLY public.activity_status DROP CONSTRAINT activity_status_pkey;
       public            postgres    false    219            �           2606    16490    attendance attendance_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (attendance_id);
 D   ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_pkey;
       public            postgres    false    229            �           2606    16441    contract contract_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.contract
    ADD CONSTRAINT contract_pkey PRIMARY KEY (number_id);
 @   ALTER TABLE ONLY public.contract DROP CONSTRAINT contract_pkey;
       public            postgres    false    221            �           2606    16469    pass pass_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.pass
    ADD CONSTRAINT pass_pkey PRIMARY KEY (pass_id);
 8   ALTER TABLE ONLY public.pass DROP CONSTRAINT pass_pkey;
       public            postgres    false    227            �           2606    16500    pass_status pass_status_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.pass_status
    ADD CONSTRAINT pass_status_pkey PRIMARY KEY (status_pass_id, activity_status);
 F   ALTER TABLE ONLY public.pass_status DROP CONSTRAINT pass_status_pkey;
       public            postgres    false    230    230            �           2606    16447    receipts receipts_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.receipts
    ADD CONSTRAINT receipts_pkey PRIMARY KEY (receipt_id);
 @   ALTER TABLE ONLY public.receipts DROP CONSTRAINT receipts_pkey;
       public            postgres    false    223            �           2606    16458    tariffs tariffs_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tariffs
    ADD CONSTRAINT tariffs_pkey PRIMARY KEY (tariff_id);
 >   ALTER TABLE ONLY public.tariffs DROP CONSTRAINT tariffs_pkey;
       public            postgres    false    225            �           2606    16421    type_tariff type_tariff_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.type_tariff
    ADD CONSTRAINT type_tariff_pkey PRIMARY KEY (id_type);
 F   ALTER TABLE ONLY public.type_tariff DROP CONSTRAINT type_tariff_pkey;
       public            postgres    false    217            �           2606    16501    pass_status activity_status    FK CONSTRAINT     �   ALTER TABLE ONLY public.pass_status
    ADD CONSTRAINT activity_status FOREIGN KEY (activity_status) REFERENCES public.activity_status(id_activity_status);
 E   ALTER TABLE ONLY public.pass_status DROP CONSTRAINT activity_status;
       public          postgres    false    230    219    3505            �           2606    16470    pass client_id    FK CONSTRAINT     x   ALTER TABLE ONLY public.pass
    ADD CONSTRAINT client_id FOREIGN KEY (client_id) REFERENCES public.clients(client_id);
 8   ALTER TABLE ONLY public.pass DROP CONSTRAINT client_id;
       public          postgres    false    215    227    3501            �           2606    16448    receipts contract_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.receipts
    ADD CONSTRAINT contract_id FOREIGN KEY (contract_id) REFERENCES public.contract(number_id);
 >   ALTER TABLE ONLY public.receipts DROP CONSTRAINT contract_id;
       public          postgres    false    221    3507    223            �           2606    16475    pass contract_number    FK CONSTRAINT     �   ALTER TABLE ONLY public.pass
    ADD CONSTRAINT contract_number FOREIGN KEY (contract_number) REFERENCES public.contract(number_id);
 >   ALTER TABLE ONLY public.pass DROP CONSTRAINT contract_number;
       public          postgres    false    221    3507    227            �           2606    16491    attendance pass_id    FK CONSTRAINT     u   ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT pass_id FOREIGN KEY (pass_id) REFERENCES public.pass(pass_id);
 <   ALTER TABLE ONLY public.attendance DROP CONSTRAINT pass_id;
       public          postgres    false    229    227    3513            �           2606    16506    pass_status pass_id    FK CONSTRAINT     }   ALTER TABLE ONLY public.pass_status
    ADD CONSTRAINT pass_id FOREIGN KEY (status_pass_id) REFERENCES public.pass(pass_id);
 =   ALTER TABLE ONLY public.pass_status DROP CONSTRAINT pass_id;
       public          postgres    false    227    3513    230            �           2606    16480    pass tariff_id    FK CONSTRAINT     x   ALTER TABLE ONLY public.pass
    ADD CONSTRAINT tariff_id FOREIGN KEY (tariff_id) REFERENCES public.tariffs(tariff_id);
 8   ALTER TABLE ONLY public.pass DROP CONSTRAINT tariff_id;
       public          postgres    false    3511    227    225            �           2606    16459    tariffs tarrif_type    FK CONSTRAINT     �   ALTER TABLE ONLY public.tariffs
    ADD CONSTRAINT tarrif_type FOREIGN KEY (tariff_type) REFERENCES public.type_tariff(id_type);
 =   ALTER TABLE ONLY public.tariffs DROP CONSTRAINT tarrif_type;
       public          postgres    false    217    3503    225            Y      x������ � �      c      x������ � �      U   �   x��ѱ
�0����}��\Z��t�$���R�!i"��������&�|��R�8>؅!�s`��l6�M��Sb[���o�+��S��t�*��rUk)�0J@�u�����@=y^���ѝ(�ә	����wF5nC�R�����8�M��۰���Ĩ��B�o�      [      x������ � �      a      x������ � �      d      x������ � �      ]      x������ � �      _      x������ � �      W      x������ � �     