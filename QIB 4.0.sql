PGDMP  5                	    |            QIB    16.4    16.4 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16396    QIB    DATABASE     |   CREATE DATABASE "QIB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "QIB";
                postgres    false            �            1259    16511    grande_area    TABLE     f   CREATE TABLE public.grande_area (
    id integer NOT NULL,
    tipo character varying(20) NOT NULL
);
    DROP TABLE public.grande_area;
       public         heap    postgres    false            �            1259    16510    grande_area_id_seq    SEQUENCE     �   CREATE SEQUENCE public.grande_area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.grande_area_id_seq;
       public          postgres    false    218            �           0    0    grande_area_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.grande_area_id_seq OWNED BY public.grande_area.id;
          public          postgres    false    217            �            1259    16611    materia    TABLE     �   CREATE TABLE public.materia (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL,
    id_area integer NOT NULL
);
    DROP TABLE public.materia;
       public         heap    postgres    false            �            1259    16610    materia_id_seq    SEQUENCE     �   CREATE SEQUENCE public.materia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.materia_id_seq;
       public          postgres    false    220            �           0    0    materia_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.materia_id_seq OWNED BY public.materia.id;
          public          postgres    false    219            �            1259    16680    questao    TABLE     �  CREATE TABLE public.questao (
    id integer NOT NULL,
    enunciado character varying(10000) NOT NULL,
    imagem character varying(300),
    alternativa_a character varying(255) NOT NULL,
    alternativa_b character varying(255) NOT NULL,
    alternativa_c character varying(255) NOT NULL,
    alternativa_d character varying(255) NOT NULL,
    alternativa_e character varying(255) NOT NULL,
    correta character(1) NOT NULL,
    nivel integer NOT NULL
);
    DROP TABLE public.questao;
       public         heap    postgres    false            �            1259    16679    questao_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questao_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.questao_id_seq;
       public          postgres    false    222            �           0    0    questao_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.questao_id_seq OWNED BY public.questao.id;
          public          postgres    false    221            �            1259    16701    questao_materia    TABLE     j   CREATE TABLE public.questao_materia (
    id_questao integer NOT NULL,
    id_materia integer NOT NULL
);
 #   DROP TABLE public.questao_materia;
       public         heap    postgres    false            �            1259    16398    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    email character varying(60) NOT NULL,
    nome character varying(30) NOT NULL,
    senha character varying(15) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    16397    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    216            �           0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    215            .           2604    16514    grande_area id    DEFAULT     p   ALTER TABLE ONLY public.grande_area ALTER COLUMN id SET DEFAULT nextval('public.grande_area_id_seq'::regclass);
 =   ALTER TABLE public.grande_area ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            /           2604    16614 
   materia id    DEFAULT     h   ALTER TABLE ONLY public.materia ALTER COLUMN id SET DEFAULT nextval('public.materia_id_seq'::regclass);
 9   ALTER TABLE public.materia ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            0           2604    16683 
   questao id    DEFAULT     h   ALTER TABLE ONLY public.questao ALTER COLUMN id SET DEFAULT nextval('public.questao_id_seq'::regclass);
 9   ALTER TABLE public.questao ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            -           2604    16401 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16511    grande_area 
   TABLE DATA           /   COPY public.grande_area (id, tipo) FROM stdin;
    public          postgres    false    218   z+       �          0    16611    materia 
   TABLE DATA           9   COPY public.materia (id, descricao, id_area) FROM stdin;
    public          postgres    false    220   �+       �          0    16680    questao 
   TABLE DATA           �   COPY public.questao (id, enunciado, imagem, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_e, correta, nivel) FROM stdin;
    public          postgres    false    222   s.       �          0    16701    questao_materia 
   TABLE DATA           A   COPY public.questao_materia (id_questao, id_materia) FROM stdin;
    public          postgres    false    223   �1       �          0    16398    usuario 
   TABLE DATA           9   COPY public.usuario (id, email, nome, senha) FROM stdin;
    public          postgres    false    216   )2       �           0    0    grande_area_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.grande_area_id_seq', 5, true);
          public          postgres    false    217            �           0    0    materia_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.materia_id_seq', 45, true);
          public          postgres    false    219            �           0    0    questao_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.questao_id_seq', 14, true);
          public          postgres    false    221            �           0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 2, true);
          public          postgres    false    215            6           2606    16516    grande_area grande_area_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.grande_area
    ADD CONSTRAINT grande_area_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.grande_area DROP CONSTRAINT grande_area_pkey;
       public            postgres    false    218            8           2606    16518     grande_area grande_area_tipo_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.grande_area
    ADD CONSTRAINT grande_area_tipo_key UNIQUE (tipo);
 J   ALTER TABLE ONLY public.grande_area DROP CONSTRAINT grande_area_tipo_key;
       public            postgres    false    218            :           2606    16616    materia materia_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_pkey;
       public            postgres    false    220            <           2606    16687    questao questao_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.questao
    ADD CONSTRAINT questao_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.questao DROP CONSTRAINT questao_pkey;
       public            postgres    false    222            2           2606    16405    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public            postgres    false    216            4           2606    16403    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    216            =           2606    16617    materia materia_id_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.materia
    ADD CONSTRAINT materia_id_area_fkey FOREIGN KEY (id_area) REFERENCES public.grande_area(id);
 F   ALTER TABLE ONLY public.materia DROP CONSTRAINT materia_id_area_fkey;
       public          postgres    false    220    4662    218            >           2606    16709 /   questao_materia questao_materia_id_materia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.questao_materia
    ADD CONSTRAINT questao_materia_id_materia_fkey FOREIGN KEY (id_materia) REFERENCES public.materia(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.questao_materia DROP CONSTRAINT questao_materia_id_materia_fkey;
       public          postgres    false    220    223    4666            ?           2606    16704 /   questao_materia questao_materia_id_questao_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.questao_materia
    ADD CONSTRAINT questao_materia_id_questao_fkey FOREIGN KEY (id_questao) REFERENCES public.questao(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.questao_materia DROP CONSTRAINT questao_materia_id_questao_fkey;
       public          postgres    false    4668    222    223            �   D   x�3�t,��=���$39�ˈ�=�(1�˘�3/�(��<��	�PAfr�na�ᵹ !SN�t� ���      �   �  x�mSKn�0]�N�e�haI�c/׉��g�m1� ��Tt�3��"H�����P�?*�5�q���c3�L�j�w����8J��稹�G�y.(��'��펧-E�0�����/̈́��7���`iteP�$�圕t�� �$��^[��r�j��-Ag����+���_�Y%��<TJ�I��W�\c���Bq�B��I��bSKn�`KM߶wb%p��&���0{�hr�p-�jj�ñ��V��`75W�I�tvH<�Kn�`�pe�)w9
n�m3�����;�!6�}�9�$��	��4tL�
������1��H*m
ZB#��VZ�-�(�G�5v��o"h�=bwa4�nChST���/�9�S�_��ڠ�!: �r�8�&Pͩ|���_:��悖��[��M�`���4� �m��y�t(	,Q~�6N��%�.�|�p�f��_%Z�#5��T��y� h���Sn֭�-dQ��sRAQ���Mp���x�B(����#�3R����\�#������&�ղ�.+m�[t;m�N�ʒ[���Z��ޠV\��Jr�O�4H3[qz��:h�&l�&�Z��z|�!r�)��(���I�;�X��{8�Ë�E�!,��I�#1��JS:���0�s<1������/%��]      �   k  x��Tˎ[E]_E-�d��L �݄ 4(B�)j�-ۍnw]�1B����H�2l��?�K8�~��DJf����]]uΩS~�eN��C	֙^����x,��1���Gw	��.��|z���n�ٮ������=b�G�ٻcvi�\x;f��&g�Q^�bV��������[8t������}����첩�?�V.庉����L?&C�于ةk��GI���WY�$Z���6�����3����������L�)�FA��uc��BI��縈\�D�ٓ9J_���
Wn�N�+Q*��4P
%O�Rj��擂L8sC�$Y`�dM��� 8	4��` �-f�^��m���pqq�K.�k�䍣��S�d�P�)��Ss).9��4ae.Q�X�%�fpW@9��tR�8\4�@Tq(��׮x�9��6f/�3�<��=.*��)[ȫ�Rʐ2e�K�V��x����BY�s�0�՛T�9|�z<�pH����ᖶw42���$^U����P4��*�5�o�P�0��!#����E���
�lz�N�ϥQ_����J|�@�7�NV�կ�Wk
�P�ČnB(�
+A@_�a#�m0�$q��C]�6�c��0�(.|0&���+8
�3:@9�IF[�67��������7���vV��(m��P�Ğ!V��j�Y�+���슗RT���Yۍ�욢vI�i����ة%vdwrHC]��F-���K���c�l�D@#@��8��%4����
�l��`l����.r	N����{b��N����]v/��F�n_�k;�t�eۆ3��;w���8��_�(/���1�bn�.������(���m {�?�?�&�����/      �   +   x�3�4�2�4��4�bCa"�� 9C 7F��� �K�      �   *   x�3�LL�uH�M���K���tL��,N��H442����� �	�     