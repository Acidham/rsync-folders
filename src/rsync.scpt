FasdUAS 1.101.10   ��   ��    k             i         I     ������
�� .aevtoappnull  �   � ****��  ��    k    � 	 	  
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
ctxt A o      ���� 0 thedatafile theDataFile ?  H I H l  0 0��������  ��  ��   I  J K J l  0 0�� L M��   L &   Clean text read from rsync.txt     M � N N @   C l e a n   t e x t   r e a d   f r o m   r s y n c . t x t   K  O P O r   0 4 Q R Q J   0 2����   R o      ���� 0 
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
 i m a g e�A  �B  �C  �D  � o  ���@�@ 0 json  � o      �?�? 0 theicon theIcon� ��� n ����� I  ���>��=�> 	0 setkv  � ��� m  ���� ���  p a t h� ��<� m  ���� ���  a d d . p n g�<  �=  � o  ���;�; 0 theicon theIcon� ��� n ����� I  ���:��9�: 	0 setkv  � ��� m  ���� ���  i c o n� ��8� o  ���7�7 0 theicon theIcon�8  �9  � o  ���6�6 0 theitem theItem� ��� l ���5�4�3�5  �4  �3  � ��� l ���2���2  � "  Create item for delete item   � ��� 8   C r e a t e   i t e m   f o r   d e l e t e   i t e m� ��� r  ����� o  ���1�1 0 theitem theItem� n      ���  ;  ��� o  ���0�0 0 theitems theItems� ��� Z  �����/�.� ? ����� l ����-�,� I ���+��*
�+ .corecnte****       ****� o  ���)�) 0 thedata theData�*  �-  �,  � m  ���(�(  � X  ����'�� k  ���� ��� r  ���� I  � �&��%�& 0 stringsplit StringSplit� ��� o  ���$�$ 0 theline theLine� ��#� m  ���� ���  |�#  �%  � o      �"�" 0 
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
 i m a g e��  ��  ��  ��  3 o  }~���� 0 json  1 o      ���� 0 theicon theIcon/ @A@ n ��BCB I  ����D���� 	0 setkv  D EFE m  ��GG �HH  p a t hF I��I m  ��JJ �KK  e x e c . p n g��  ��  C o  ������ 0 theicon theIconA LML n ��NON I  ����P���� 	0 setkv  P QRQ m  ��SS �TT  i c o nR U��U o  ������ 0 theicon theIcon��  ��  O o  ������ 0 theitem theItemM VWV l ����������  ��  ��  W XYX l ����Z[��  Z #  Set Delete entry Mod for CMD   [ �\\ :   S e t   D e l e t e   e n t r y   M o d   f o r   C M DY ]^] r  ��_`_ n ��aba I  ����c����  0 createdictwith createDictWithc d��d J  ��ee f��f J  ��gg hih m  ��jj �kk 
 v a l i di l��l m  ��mm �nn  t r u e��  ��  ��  ��  b o  ������ 0 json  ` o      ���� 0 thedel theDel^ opo n ��qrq I  ����s���� 	0 setkv  s tut m  ��vv �ww  a r gu x��x b  ��yzy m  ��{{ �||  d e l |z o  ������ 0 theid theID��  ��  r o  ������ 0 thedel theDelp }~} n ��� I  ��������� 	0 setkv  � ��� m  ���� ���  s u b t i t l e� ���� m  ���� ���  D E L E T E   c o n f i g��  ��  � o  ������ 0 thedel theDel~ ��� l ����������  ��  ��  � ��� r  ����� n ����� I  ���������  0 createdictwith createDictWith� ���� J  ���� ���� J  ���� ��� m  ���� ���  t y p e� ���� m  ���� ��� 
 i m a g e��  ��  ��  ��  � o  ������ 0 json  � o      ���� 0 theicon theIcon� ��� n ���� I  �������� 	0 setkv  � ��� m  ���� ���  p a t h� ���� m  ���� ���  d e l e t e . p n g��  ��  � o  ������ 0 theicon theIcon� ��� n ��� I  ������� 	0 setkv  � ��� m  	�� ���  i c o n� ���� o  	���� 0 theicon theIcon��  ��  � o  ���� 0 thedel theDel� ��� l ��������  ��  ��  � ��� r  $��� n  ��� I   �������  0 createdictwith createDictWith� ���� J  �� ���� J  �� ��� m  �� ���  c m d� ���� o  ���� 0 thedel theDel��  ��  ��  ��  � o  ���� 0 json  � o      ���� 0 themod theMod� ��� l %%��������  ��  ��  � ��� l %%������  � !  Set Edit entry mod for ALT   � ��� 6   S e t   E d i t   e n t r y   m o d   f o r   A L T� ��� r  %8��� n %4��� I  &4�������  0 createdictwith createDictWith� ���� J  &0�� ���� J  &.�� ��� m  &)�� ��� 
 v a l i d� ���� m  ),�� ���  t r u e��  ��  ��  ��  � o  %&���� 0 json  � o      ���� 0 theedit theEdit� ��� n 9J��� I  <J������� 	0 setkv  � ��� m  <?�� ���  a r g� ���� b  ?F��� m  ?B�� ��� 
 e d i t |� o  BE���� 0 theid theID��  ��  � o  9<���� 0 theedit theEdit� ��� n KX��� I  NX������� 	0 setkv  � ��� m  NQ�� ���  s u b t i t l e� ���� m  QT�� ���  E D I T   c o n f i g��  ��  � o  KN���� 0 theedit theEdit� ��� n Yf��� I  \f������� 	0 setkv  � ��� m  \_�� �    a l t� �� o  _b���� 0 theedit theEdit��  ��  � o  Y\���� 0 themod theMod�  l gg��������  ��  ��    r  gz n gv	 I  hv��
����  0 createdictwith createDictWith
 �� J  hr �� J  hp  m  hk �  t y p e �� m  kn � 
 i m a g e��  ��  ��  ��  	 o  gh���� 0 json   o      ���� 0 theicon theIcon  n {� I  ~������� 	0 setkv    m  ~� �  p a t h �� m  ��   �!!  e d i t . p n g��  ��   o  {~���� 0 theicon theIcon "#" n ��$%$ I  ����&���� 	0 setkv  & '(' m  ��)) �**  i c o n( +��+ o  ������ 0 theicon theIcon��  ��  % o  ������ 0 theedit theEdit# ,-, l ����������  ��  ��  - ./. n ��010 I  ����2���� 	0 setkv  2 343 m  ��55 �66  m o d s4 7��7 o  ������ 0 themod theMod��  ��  1 o  ������ 0 theitem theItem/ 898 l ������~��  �  �~  9 :;: l ���}<=�}  < 2 , Add JSON strucutre for Script Object Filter   = �>> X   A d d   J S O N   s t r u c u t r e   f o r   S c r i p t   O b j e c t   F i l t e r; ?�|? r  ��@A@ o  ���{�{ 0 theitem theItemA n      BCB  ;  ��C o  ���z�z 0 theitems theItems�|  �' 0 theline theLine� o  ���y�y 0 thedata theData�/  �.  � DED l ���x�w�v�x  �w  �v  E FGF l ���uHI�u  H 2 , Create root items object and encode to JSON   I �JJ X   C r e a t e   r o o t   i t e m s   o b j e c t   a n d   e n c o d e   t o   J S O NG KLK r  ��MNM n ��OPO I  ���t�s�r�t 0 
createdict 
createDict�s  �r  P o  ���q�q 0 json  N o      �p�p 0 itemdict itemDictL QRQ n ��STS I  ���oU�n�o 	0 setkv  U VWV m  ��XX �YY 
 i t e m sW Z�mZ o  ���l�l 0 theitems theItems�m  �n  T o  ���k�k 0 itemdict itemDictR [\[ l ���j�i�h�j  �i  �h  \ ]^] l ���g_`�g  _    Return Script filter JSON   ` �aa 4   R e t u r n   S c r i p t   f i l t e r   J S O N^ bcb L  ��dd n ��efe I  ���fg�e�f 
0 encode  g h�dh o  ���c�c 0 itemdict itemDict�d  �e  f o  ���b�b 0 json  c i�ai l ���`�_�^�`  �_  �^  �a    jkj l     �]�\�[�]  �\  �[  k lml l      �Zno�Z  n � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   o �pp�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =m q�Yq i    rsr I      �Xt�W�X 0 stringsplit StringSplitt uvu o      �V�V 0 	thestring 	theStringv w�Uw o      �T�T 0 thedelimiter theDelimiter�U  �W  s k     xx yzy l     �S{|�S  { . ( save delimiters to restore old settings   | �}} P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g sz ~~ r     ��� n    ��� 1    �R
�R 
txdl� 1     �Q
�Q 
ascr� o      �P�P 0 olddelimiters oldDelimiters ��� l   �O���O  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    �N�N 0 thedelimiter theDelimiter� n     ��� 1    
�M
�M 
txdl� 1    �L
�L 
ascr� ��� l   �K���K  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    �J
�J 
citm� o    �I�I 0 	thestring 	theString� o      �H�H 0 thearray theArray� ��� l   �G���G  �   restore the old setting   � ��� 0   r e s t o r e   t h e   o l d   s e t t i n g� ��� r    ��� o    �F�F 0 olddelimiters oldDelimiters� n     ��� 1    �E
�E 
txdl� 1    �D
�D 
ascr� ��� l   �C���C  �   return the result   � ��� $   r e t u r n   t h e   r e s u l t� ��B� L    �� o    �A�A 0 thearray theArray�B  �Y       �@����@  � �?�>
�? .aevtoappnull  �   � ****�> 0 stringsplit StringSplit� �= �<�;���:
�= .aevtoappnull  �   � ****�<  �;  � �9�9 0 theline theLine� w�8 �7  �6�5�4�3 3 <�2 F�1�0�/�.�-�,�+�* `�)�(�'�&�% x�$ � ��#�" � ��! � � � � � ��  � � �"%.1:=QT�]`il}���������������'*;>GJSjm�v{���������������� )5��X�
�8 
psxf
�7 .sysoexecTEXT���     TEXT�6 0 thejsonpath theJsonPath
�5 
alis
�4 .sysoloadscpt        file�3 0 json  �2 0 
thedatadir 
theDataDir
�1 
ctxt�0 0 thedatafile theDataFile�/ 0 
therawdata 
theRawData
�. 
file
�- .rdwrread****        ****
�, 
cpar�+  �*  
�) .ascrcmnt****      � ****�( 0 thedata theData
�' 
kocl
�& 
cobj
�% .corecnte****       ****�$ 0 theitems theItems�#  0 createdictwith createDictWith�" 0 theitem theItem�! 	0 setkv  �  0 theicon theIcon� 0 thetextfield theTextField� 0 themod theMod� 0 stringsplit StringSplit� 0 
thedataset 
theDataSet� 0 theid theID� 0 thename theName� 0 	thesource 	theSource� � 0 	thetarget 	theTarget� 0 thedel theDel� 0 theedit theEdit� 0 
createdict 
createDict� 0 itemdict itemDict� 
0 encode  �:�*��j �%/E�O��&j E�O�j O*��j /E�O��%�&E�OjvE�O *��/j a -E�W X  a j OjvE` O /�[a a l kh  ��&a  _ �%E` Y h[OY��OjvE` O�a a lvkvk+ E` O_ a  a !l+ "O_ a #a $l+ "O_ a %a &l+ "O�a 'a (lvkvk+ E` )O_ )a *a +l+ "O_ a ,_ )l+ "O_ _ 6FO�a -a .lvkvk+ E` O_ a /a 0l+ "O_ a 1a 2l+ "O_ a 3a 4l+ "O�a 5a 6lvkvk+ E` 7O_ 7a 8a 9l+ "O_ 7a :a ;l+ "O�a <_ 7lvkvk+ E` =O_ a >_ =l+ "O�a ?a @lvkvk+ E` )O_ )a Aa Bl+ "O_ a C_ )l+ "O_ _ 6FO_ j j��_ [a a l kh  *�a Dl+ EE` FO_ Fa k/E` GO_ Fa l/E` HO_ Fa m/E` IO_ Fa a J/E` KO�a L_ Hlvkvk+ E` O_ a Ma Nl+ "O_ a Oa P_ G%l+ "O_ a Qa Rl+ "O�a Sa Tlvkvk+ E` )O_ )a Ua Vl+ "O_ a W_ )l+ "O�a Xa Ylvkvk+ E` ZO_ Za [a \_ G%l+ "O_ Za ]a ^l+ "O�a _a `lvkvk+ E` )O_ )a aa bl+ "O_ Za c_ )l+ "O�a d_ Zlvkvk+ E` =O�a ea flvkvk+ E` gO_ ga ha i_ G%l+ "O_ ga ja kl+ "O_ =a l_ gl+ "O�a ma nlvkvk+ E` )O_ )a oa pl+ "O_ ga q_ )l+ "O_ a r_ =l+ "O_ _ 6F[OY�DY hO�j+ sE` tO_ ta u_ l+ "O�_ tk+ vOP� �s������ 0 stringsplit StringSplit� ��� �  ��� 0 	thestring 	theString� 0 thedelimiter theDelimiter�  � �
�	���
 0 	thestring 	theString�	 0 thedelimiter theDelimiter� 0 olddelimiters oldDelimiters� 0 thearray theArray� ���
� 
ascr
� 
txdl
� 
citm� ��,E�O���,FO��-E�O���,FO�ascr  ��ޭ