FasdUAS 1.101.10   ��   ��    k             i         I     ������
�� .aevtoappnull  �   � ****��  ��    k    h 	 	  
  
 l     ��  ��      Load json File     �      L o a d   j s o n   F i l e      l     ��  ��    3 - https://github.com/KAYLukas/applescript-json     �   Z   h t t p s : / / g i t h u b . c o m / K A Y L u k a s / a p p l e s c r i p t - j s o n      r         4     
�� 
�� 
psxf  l   	 ����  b    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m       �    p w d��  ��  ��    m         � ! !  / j s o n . s c p t��  ��    o      ���� 0 thejsonpath theJsonPath   " # " r     $ % $ I   �� &��
�� .sysoloadscpt        file & c     ' ( ' o    ���� 0 thejsonpath theJsonPath ( m    ��
�� 
alis��   % o      ���� 0 json   #  ) * ) l   ��������  ��  ��   *  + , + l   �� - .��   - "  get data directory and file    . � / / 8   g e t   d a t a   d i r e c t o r y   a n d   f i l e ,  0 1 0 I   �� 2��
�� .sysoexecTEXT���     TEXT 2 m     3 3 � 4 4 D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��   1  5 6 5 r    ' 7 8 7 4    %�� 9
�� 
psxf 9 l   $ :���� : I   $�� ;��
�� .sysoexecTEXT���     TEXT ; m      < < � = = 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   8 o      ���� 0 
thedatadir 
theDataDir 6  > ? > r   ( / @ A @ c   ( - B C B b   ( + D E D o   ( )���� 0 
thedatadir 
theDataDir E m   ) * F F � G G  : r s y n c . t x t C m   + ,��
�� 
ctxt A o      ���� 0 thedatafile theDataFile ?  H I H l  0 0��������  ��  ��   I  J K J l  0 0�� L M��   L %  Clean text read from rsync.txt    M � N N >   C l e a n   t e x t   r e a d   f r o m   r s y n c . t x t K  O P O r   0 4 Q R Q J   0 2����   R o      ���� 0 
therawdata 
theRawData P  S T S Q   5 U U V W U r   8 F X Y X n   8 D Z [ Z 2  @ D��
�� 
cpar [ l  8 @ \���� \ I  8 @�� ]��
�� .rdwrread****        **** ] 4   8 <�� ^
�� 
file ^ o   : ;���� 0 thedatafile theDataFile��  ��  ��   Y o      ���� 0 
therawdata 
theRawData V R      ������
�� .ascrerr ****      � ****��  ��   W I  N U�� _��
�� .ascrcmnt****      � **** _ m   N Q ` ` � a a  f i l e   e m p t y��   T  b c b l  V V��������  ��  ��   c  d e d l  V V�� f g��   f / ) read rsync.txt content into theData list    g � h h R   r e a d   r s y n c . t x t   c o n t e n t   i n t o   t h e D a t a   l i s t e  i j i r   V \ k l k J   V X����   l o      ���� 0 thedata theData j  m n m X   ] � o�� p o Z   q � q r���� q E   q x s t s l  q t u���� u c   q t v w v o   q r���� 0 theline theLine w m   r s��
�� 
ctxt��  ��   t m   t w x x � y y  | r r   { � z { z b   { � | } | o   { ~���� 0 thedata theData } o   ~ ���� 0 theline theLine { o      ���� 0 thedata theData��  ��  �� 0 theline theLine p o   ` a���� 0 
therawdata 
theRawData n  ~  ~ l  � ���������  ��  ��     � � � l  � ��� � ���   � ) # Create Script filter output object    � � � � F   C r e a t e   S c r i p t   f i l t e r   o u t p u t   o b j e c t �  � � � r   � � � � � J   � �����   � o      ���� 0 theitems theItems �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 5 / Create Execute all entry in Script Filter list    � � � � ^   C r e a t e   E x e c u t e   a l l   e n t r y   i n   S c r i p t   F i l t e r   l i s t �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 createdictwith createDictWith �  ��� � J   � � � �  ��� � J   � � � �  � � � m   � � � � � � � 
 t i t l e �  ��� � m   � � � � � � �  E x e c u t e   a l l��  ��  ��  ��   � o   � ����� 0 json   � o      ���� 0 theitem theItem �  � � � n  � � � � � I   � ��� ����� 	0 setkv   �  � � � m   � � � � � � �  s u b t i t l e �  ��� � m   � � � � � � �  E x e c u t e   R s y n c��  ��   � o   � ����� 0 theitem theItem �  � � � n  � � � � � I   � ��� ����� 	0 setkv   �  � � � m   � � � � � � �  a r g �  ��� � m   � � � � � � �  e x e c | 0��  ��   � o   � ����� 0 theitem theItem �  � � � n  � � � � � I   � ��� ����� 	0 setkv   �  � � � m   � � � � � � �  q u i c k l o o k u r l �  ��� � m   � � � � � � �  ��  ��   � o   � ����� 0 theitem theItem �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ' ! create image for execute command    � � � � B   c r e a t e   i m a g e   f o r   e x e c u t e   c o m m a n d �  � � � r   � � � � � n  � � � � � I   � ��� �����  0 createdictwith createDictWith �  ��� � J   � � � �  ��� � J   � � � �  � � � m   � � � � � � �  t y p e �  ��� � m   � � � � � � � 
 i m a g e��  ��  ��  ��   � o   � ����� 0 json   � o      ���� 0 theicon theIcon �  � � � n  � � � � � I   � ��� ����� 	0 setkv   �  � � � m   � � � � � � �  p a t h �  ��� � m   � � � � � � �  e x e c u t e . p n g��  ��   � o   � ����� 0 theicon theIcon �  � � � n  � � � � I   ��� ����� 	0 setkv   �  � � � m   � � � � � � �  i c o n �  ��� � o   � ����� 0 theicon theIcon��  ��   � o   � ����� 0 theitem theItem �  � � � l ��������  ��  ��   �  � � � l �� � ���   �    add to script filter list    � � � � 4   a d d   t o   s c r i p t   f i l t e r   l i s t �  � � � r   � � � o  ���� 0 theitem theItem � n          ;  	
 o  	���� 0 theitems theItems �  l ��������  ��  ��    l ��   #  Add item by browsing folders    � :   A d d   i t e m   b y   b r o w s i n g   f o l d e r s 	
	 r   n  I  �~�}�~  0 createdictwith createDictWith �| J   �{ J    m   � 
 t i t l e �z m   �  N e w   E n t r y�z  �{  �|  �}   o  �y�y 0 json   o      �x�x 0 theitem theItem
  n  - I  #-�w�v�w 	0 setkv    !  m  #&"" �##  s u b t i t l e! $�u$ m  &)%% �&& P A d d   n e w   r s y n c   c o n f i g   b y   b r o w s i n g   f o l d e r s�u  �v   o   #�t�t 0 theitem theItem '(' n .;)*) I  1;�s+�r�s 	0 setkv  + ,-, m  14.. �//  a r g- 0�q0 m  4711 �22 
 a d d | 0�q  �r  * o  .1�p�p 0 theitem theItem( 343 n <I565 I  ?I�o7�n�o 	0 setkv  7 898 m  ?B:: �;;  q u i c k l o o k u r l9 <�m< m  BE== �>>  �m  �n  6 o  <?�l�l 0 theitem theItem4 ?@? l JJ�kAB�k  A 2 , CMD for adding folder with text entry field   B �CC X   C M D   f o r   a d d i n g   f o l d e r   w i t h   t e x t   e n t r y   f i e l d@ DED r  J]FGF n JYHIH I  KY�jJ�i�j  0 createdictwith createDictWithJ K�hK J  KULL M�gM J  KSNN OPO m  KNQQ �RR 
 v a l i dP S�fS m  NQTT �UU  t r u e�f  �g  �h  �i  I o  JK�e�e 0 json  G o      �d�d 0 thetextfield theTextFieldE VWV n ^kXYX I  ak�cZ�b�c 	0 setkv  Z [\[ m  ad]] �^^  a r g\ _�a_ m  dg`` �aa 
 a d d | 1�a  �b  Y o  ^a�`�` 0 thetextfield theTextFieldW bcb n lyded I  oy�_f�^�_ 	0 setkv  f ghg m  orii �jj  s u b t i t l eh k�]k m  rull �mm D A d d   r s y n c   c o n f i g   w i t h   a d d i n g   p a t h s�]  �^  e o  lo�\�\ 0 thetextfield theTextFieldc non l zz�[�Z�Y�[  �Z  �Y  o pqp r  z�rsr n z�tut I  {��Xv�W�X  0 createdictwith createDictWithv w�Vw J  {�xx y�Uy J  {�zz {|{ m  {~}} �~~  c m d| �T o  ~��S�S 0 thetextfield theTextField�T  �U  �V  �W  u o  z{�R�R 0 json  s o      �Q�Q 0 themod theModq ��� l ���P�O�N�P  �O  �N  � ��� n ����� I  ���M��L�M 	0 setkv  � ��� m  ���� ���  m o d s� ��K� o  ���J�J 0 themod theMod�K  �L  � o  ���I�I 0 theitem theItem� ��� l ���H�G�F�H  �G  �F  � ��� r  ����� n ����� I  ���E��D�E  0 createdictwith createDictWith� ��C� J  ���� ��B� J  ���� ��� m  ���� ���  t y p e� ��A� m  ���� ��� 
 i m a g e�A  �B  �C  �D  � o  ���@�@ 0 json  � o      �?�? 0 theicon theIcon� ��� n ����� I  ���>��=�> 	0 setkv  � ��� m  ���� ���  p a t h� ��<� m  ���� ���  a d d . p n g�<  �=  � o  ���;�; 0 theicon theIcon� ��� n ����� I  ���:��9�: 	0 setkv  � ��� m  ���� ���  i c o n� ��8� o  ���7�7 0 theicon theIcon�8  �9  � o  ���6�6 0 theitem theItem� ��� l ���5�4�3�5  �4  �3  � ��� l ���2���2  � "  Create item for delete item   � ��� 8   C r e a t e   i t e m   f o r   d e l e t e   i t e m� ��� r  ����� o  ���1�1 0 theitem theItem� n      ���  ;  ��� o  ���0�0 0 theitems theItems� ��� Z  �D���/�.� ? ����� l ����-�,� I ���+��*
�+ .corecnte****       ****� o  ���)�) 0 thedata theData�*  �-  �,  � m  ���(�(  � X  �@��'�� k  �;�� ��� r  ���� I  � �&��%�& 0 stringsplit StringSplit� ��� o  ���$�$ 0 theline theLine� ��#� m  ���� ���  |�#  �%  � o      �"�" 0 
thedataset 
theDataSet� ��� r  ��� n  ��� 4  �!�
�! 
cobj� m  � �  � o  �� 0 
thedataset 
theDataSet� o      �� 0 theid theID� ��� r  ��� n  ��� 4  ��
� 
cobj� m  �� � o  �� 0 
thedataset 
theDataSet� o      �� 0 thename theName� ��� r  +��� n  '��� 4  "'��
� 
cobj� m  %&�� � o  "�� 0 
thedataset 
theDataSet� o      �� 0 	thesource 	theSource� ��� r  ,:��� n  ,6��� 4  /6��
� 
cobj� m  25�� � o  ,/�� 0 
thedataset 
theDataSet� o      �� 0 	thetarget 	theTarget� ��� l ;;����  �  �  � ��� r  ;N��� n ;J��� I  <J����  0 createdictwith createDictWith� ��� J  <F�� ��� J  <D    m  <? � 
 t i t l e �
 o  ?B�	�	 0 thename theName�
  �  �  �  � o  ;<�� 0 json  � o      �� 0 theitem theItem�  n O\	 I  R\�
�� 	0 setkv  
  m  RU �  s u b t i t l e � m  UX �  E X E C U T E   e n t r y�  �  	 o  OR�� 0 theitem theItem  n ]n I  `n��� 	0 setkv    m  `c �  a r g �  b  cj m  cf � 
 e x e c | o  fi���� 0 theid theID�   �   o  ]`���� 0 theitem theItem  !  n o|"#" I  r|��$���� 	0 setkv  $ %&% m  ru'' �((  q u i c k l o o k u r l& )��) m  ux** �++  ��  ��  # o  or���� 0 theitem theItem! ,-, l }}��������  ��  ��  - ./. r  }�010 n }�232 I  ~���4����  0 createdictwith createDictWith4 5��5 J  ~�66 7��7 J  ~�88 9:9 m  ~�;; �<<  t y p e: =��= m  ��>> �?? 
 i m a g e��  ��  ��  ��  3 o  }~���� 0 json  1 o      ���� 0 theicon theIcon/ @A@ n ��BCB I  ����D���� 	0 setkv  D EFE m  ��GG �HH  p a t hF I��I m  ��JJ �KK  e x e c . p n g��  ��  C o  ������ 0 theicon theIconA LML n ��NON I  ����P���� 	0 setkv  P QRQ m  ��SS �TT  i c o nR U��U o  ������ 0 theicon theIcon��  ��  O o  ������ 0 theitem theItemM VWV l ����������  ��  ��  W XYX l ����Z[��  Z C = no modifiers so far but leave it in case it will be required   [ �\\ z   n o   m o d i f i e r s   s o   f a r   b u t   l e a v e   i t   i n   c a s e   i t   w i l l   b e   r e q u i r e dY ]^] l ����_`��  _   Set Mod for CMD   ` �aa     S e t   M o d   f o r   C M D^ bcb r  ��ded n ��fgf I  ����h����  0 createdictwith createDictWithh i��i J  ��jj k��k J  ��ll mnm m  ��oo �pp 
 v a l i dn q��q m  ��rr �ss  t r u e��  ��  ��  ��  g o  ������ 0 json  e o      ���� 0 thedel theDelc tut n ��vwv I  ����x���� 	0 setkv  x yzy m  ��{{ �||  a r gz }��} b  ��~~ m  ���� ���  d e l | o  ������ 0 theid theID��  ��  w o  ������ 0 thedel theDelu ��� n ����� I  ��������� 	0 setkv  � ��� m  ���� ���  s u b t i t l e� ���� m  ���� ���  D E L E T E   e n t r y��  ��  � o  ������ 0 thedel theDel� ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ���������  0 createdictwith createDictWith� ���� J  ���� ���� J  ���� ��� m  ���� ���  t y p e� ���� m  ���� ��� 
 i m a g e��  ��  ��  ��  � o  ������ 0 json  � o      ���� 0 theicon theIcon� ��� n ���� I  �������� 	0 setkv  � ��� m  ���� ���  p a t h� ���� m  ���� ���  d e l e t e . p n g��  ��  � o  ������ 0 theicon theIcon� ��� n ��� I  ������� 	0 setkv  � ��� m  	�� ���  i c o n� ���� o  	���� 0 theicon theIcon��  ��  � o  ���� 0 thedel theDel� ��� l ��������  ��  ��  � ��� r  $��� n  ��� I   �������  0 createdictwith createDictWith� ���� J  �� ���� J  �� ��� m  �� ���  c m d� ���� o  ���� 0 thedel theDel��  ��  ��  ��  � o  ���� 0 json  � o      ���� 0 themod theMod� ��� l %%��������  ��  ��  � ��� l  %%������  � � �	-- Set Mod for ALT			set theDel to json's createDictWith({{"valid", "true"}})		theDel's setkv("arg", "del|" & theID)		theDel's setkv("subtitle", "Delete rsync command")		theMod's setkv("alt", theDel)   � ���� 	 - -   S e t   M o d   f o r   A L T  	 	 	 s e t   t h e D e l   t o   j s o n ' s   c r e a t e D i c t W i t h ( { { " v a l i d " ,   " t r u e " } } )  	 	 t h e D e l ' s   s e t k v ( " a r g " ,   " d e l | "   &   t h e I D )  	 	 t h e D e l ' s   s e t k v ( " s u b t i t l e " ,   " D e l e t e   r s y n c   c o m m a n d " )  	 	 t h e M o d ' s   s e t k v ( " a l t " ,   t h e D e l )� ��� l %%��������  ��  ��  � ��� n %2��� I  (2������� 	0 setkv  � ��� m  (+�� ���  m o d s� ���� o  +.���� 0 themod theMod��  ��  � o  %(���� 0 theitem theItem� ��� l 33��������  ��  ��  � ��� l 33������  � 2 , Add JSON strucutre for Script Object Filter   � ��� X   A d d   J S O N   s t r u c u t r e   f o r   S c r i p t   O b j e c t   F i l t e r� ���� r  3;��� o  36���� 0 theitem theItem� n      ���  ;  9:� o  69���� 0 theitems theItems��  �' 0 theline theLine� o  ������ 0 thedata theData�/  �.  � ��� l EE��������  ��  ��  � ��� l EE������  � 2 , Create root items object and encode to JSON   � ��� X   C r e a t e   r o o t   i t e m s   o b j e c t   a n d   e n c o d e   t o   J S O N� ��� r  EN��� n EJ��� I  FJ�������� 0 
createdict 
createDict��  ��  � o  EF���� 0 json  � o      ���� 0 itemdict itemDict� ��� n O\��� I  R\������� 	0 setkv  � ��� m  RU�� ��� 
 i t e m s� ���� o  UX���� 0 theitems theItems��  ��  � o  OR���� 0 itemdict itemDict�    l ]]��������  ��  ��    l ]]����      Return Script filter JSON    � 4   R e t u r n   S c r i p t   f i l t e r   J S O N  L  ]f		 n ]e

 I  ^e������ 
0 encode   �� o  ^a���� 0 itemdict itemDict��  ��   o  ]^���� 0 json   �� l gg��������  ��  ��  ��     l     ��������  ��  ��    l      ����   � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================    ��   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �� i     I      ��~� 0 stringsplit StringSplit  o      �}�} 0 	thestring 	theString �| o      �{�{ 0 thedelimiter theDelimiter�|  �~   k       l     �z !�z    . ( save delimiters to restore old settings   ! �"" P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s #$# r     %&% n    '(' 1    �y
�y 
txdl( 1     �x
�x 
ascr& o      �w�w 0 olddelimiters oldDelimiters$ )*) l   �v+,�v  + - ' set delimiters to delimiter to be used   , �-- N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d* ./. r    010 o    �u�u 0 thedelimiter theDelimiter1 n     232 1    
�t
�t 
txdl3 1    �s
�s 
ascr/ 454 l   �r67�r  6   create the array   7 �88 "   c r e a t e   t h e   a r r a y5 9:9 r    ;<; n    =>= 2    �q
�q 
citm> o    �p�p 0 	thestring 	theString< o      �o�o 0 thearray theArray: ?@? l   �nAB�n  A   restore the old setting   B �CC 0   r e s t o r e   t h e   o l d   s e t t i n g@ DED r    FGF o    �m�m 0 olddelimiters oldDelimitersG n     HIH 1    �l
�l 
txdlI 1    �k
�k 
ascrE JKJ l   �jLM�j  L   return the result   M �NN $   r e t u r n   t h e   r e s u l tK O�iO L    PP o    �h�h 0 thearray theArray�i  ��       �gQRS�g  Q �f�e
�f .aevtoappnull  �   � ****�e 0 stringsplit StringSplitR �d �c�bTU�a
�d .aevtoappnull  �   � ****�c  �b  T �`�` 0 theline theLineU j�_ �^  �]�\�[�Z 3 <�Y F�X�W�V�U�T�S�R�Q `�P�O�N�M�L x�K � ��J�I � ��H � � � � � ��G � � �"%.1:=QT�F]`il}�E��������D�C�B�A�@�?�>'*;>GJSor�={�����������<�;��:
�_ 
psxf
�^ .sysoexecTEXT���     TEXT�] 0 thejsonpath theJsonPath
�\ 
alis
�[ .sysoloadscpt        file�Z 0 json  �Y 0 
thedatadir 
theDataDir
�X 
ctxt�W 0 thedatafile theDataFile�V 0 
therawdata 
theRawData
�U 
file
�T .rdwrread****        ****
�S 
cpar�R  �Q  
�P .ascrcmnt****      � ****�O 0 thedata theData
�N 
kocl
�M 
cobj
�L .corecnte****       ****�K 0 theitems theItems�J  0 createdictwith createDictWith�I 0 theitem theItem�H 	0 setkv  �G 0 theicon theIcon�F 0 thetextfield theTextField�E 0 themod theMod�D 0 stringsplit StringSplit�C 0 
thedataset 
theDataSet�B 0 theid theID�A 0 thename theName�@ 0 	thesource 	theSource�? �> 0 	thetarget 	theTarget�= 0 thedel theDel�< 0 
createdict 
createDict�; 0 itemdict itemDict�: 
0 encode  �ai*��j �%/E�O��&j E�O�j O*��j /E�O��%�&E�OjvE�O *��/j a -E�W X  a j OjvE` O /�[a a l kh  ��&a  _ �%E` Y h[OY��OjvE` O�a a lvkvk+ E` O_ a  a !l+ "O_ a #a $l+ "O_ a %a &l+ "O�a 'a (lvkvk+ E` )O_ )a *a +l+ "O_ a ,_ )l+ "O_ _ 6FO�a -a .lvkvk+ E` O_ a /a 0l+ "O_ a 1a 2l+ "O_ a 3a 4l+ "O�a 5a 6lvkvk+ E` 7O_ 7a 8a 9l+ "O_ 7a :a ;l+ "O�a <_ 7lvkvk+ E` =O_ a >_ =l+ "O�a ?a @lvkvk+ E` )O_ )a Aa Bl+ "O_ a C_ )l+ "O_ _ 6FO_ j jd^_ [a a l kh  *�a Dl+ EE` FO_ Fa k/E` GO_ Fa l/E` HO_ Fa m/E` IO_ Fa a J/E` KO�a L_ Hlvkvk+ E` O_ a Ma Nl+ "O_ a Oa P_ G%l+ "O_ a Qa Rl+ "O�a Sa Tlvkvk+ E` )O_ )a Ua Vl+ "O_ a W_ )l+ "O�a Xa Ylvkvk+ E` ZO_ Za [a \_ G%l+ "O_ Za ]a ^l+ "O�a _a `lvkvk+ E` )O_ )a aa bl+ "O_ Za c_ )l+ "O�a d_ Zlvkvk+ E` =O_ a e_ =l+ "O_ _ 6F[OY��Y hO�j+ fE` gO_ ga h_ l+ "O�_ gk+ iOPS �9�8�7VW�6�9 0 stringsplit StringSplit�8 �5X�5 X  �4�3�4 0 	thestring 	theString�3 0 thedelimiter theDelimiter�7  V �2�1�0�/�2 0 	thestring 	theString�1 0 thedelimiter theDelimiter�0 0 olddelimiters oldDelimiters�/ 0 thearray theArrayW �.�-�,
�. 
ascr
�- 
txdl
�, 
citm�6 ��,E�O���,FO��-E�O���,FO�ascr  ��ޭ