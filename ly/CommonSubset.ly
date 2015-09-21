\version "2.14.2"

#(set-default-paper-size "letter")

\paper {
  two-sided = ##t
  first-page-number = #1
  print-first-page-number = ##t
  headerMarkup = \markup\fromproperty #'header:section
  oddHeaderMarkup = \markup\fill-line{
        ""
        \on-the-fly #print-page-number-check-first
        \headerMarkup
  }
  evenHeaderMarkup = \markup\fill-line{
        \headerMarkup
        \on-the-fly #print-page-number-check-first
        ""
  }
}



\include "unmapped/O_Come_O_Come_Emmanuel.ly"
\include "unmapped/Veni_Veni_Emmanuel.ly"
\include "unmapped/Come_Thou_Long_Expected_Jesus-Stainer.ly"
\include "unmapped/Come_Thou_Long_Expected_Jesus-Stuttgart.ly"
\include "unmapped/O_Come_Divine_Messiah.ly"
\include "unmapped/On_Jordans_Bank.ly"
\include "unmapped/Hark_a_Herald_Voice_is_Calling.ly"
%\include "unmapped/Wake_O_Wake_with_Tidings_Thrilling.ly" % weird
\include "unmapped/Christmas_is_Coming-Round.ly"
\include "unmapped/Creator_alme_siderum.ly"
\include "unmapped/Creator_of_the_Stars_of_Night.ly"
\include "unmapped/Christmas_is_Coming-Walford_Davies.ly"
\include "unmapped/Adeste_Fideles.ly"
\include "unmapped/O_Come_All_Ye_Faithful.ly"
\include "unmapped/Joy_to_the_World.ly"
\include "unmapped/A_Child_this_day_is_born.ly"
\include "unmapped/The_First_Nowell.ly"
\include "unmapped/When_Christ_was_born_of_Mary_free.ly"
\include "unmapped/Hark_the_Herald_Angels_Sing.ly"
\include "unmapped/Jesus_the_Light_of_the_World.ly"
\include "unmapped/It_Came_Upon_the_Midnight_Clear.ly"
\include "unmapped/Shepherds_Shake_Off_Your_Drowsy_Sleep.ly"
\include "unmapped/Angels_We_Have_Heard_on_High.ly"
\include "unmapped/Masters_in_This_Hall.ly"
%\include "unmapped/The_Twelve_Days_of_Christmas.ly" % counting game
\include "unmapped/Carol_for_Christmas_Eve.ly"
\include "unmapped/Away_In_A_Manger-Murray.ly"
\include "unmapped/Away_In_A_Manger-Kirkpatrick.ly"
\include "unmapped/Away_In_A_Manger-Spilman.ly"
\include "unmapped/A_Virgin_Unspotted.ly"
\include "unmapped/Ding_Dong_Merrily_on_High.ly"
\include "unmapped/Up_Good_Christen_folk_and_listen.ly"
\include "unmapped/Stille_Nacht.ly"
\include "unmapped/Silent_Night.ly"
\include "unmapped/Christ_Was_Born_on_Christmas_Day.ly"
\include "unmapped/Joseph_O_Dear_Joseph_Mine.ly"
\include "unmapped/O_Little_Town_of_Bethlehem.ly"
\include "unmapped/Hymn_for_Christmas_Day.ly"
\include "unmapped/What_Child_is_This.ly"
\include "unmapped/Good_King_Wenceslas-Stainer.ly"
\include "unmapped/Good_King_Wenceslas-Woodward.ly"
\include "unmapped/In_natali_Domini.ly"
\include "unmapped/On_the_Birthday_of_the_Lord.ly"
\include "unmapped/Once_in_Royal_Davids_City.ly"
\include "unmapped/Past_Three_a_Clock.ly"
\include "unmapped/Bring_a_Torch_Jeanette_Isabella.ly"
%\include "unmapped/The_Angel_Gabriel.ly" % bars
\include "unmapped/Angelus_ad_virginem.ly"
\include "unmapped/God_Rest_You_Merry_Gentlemen.ly"
\include "unmapped/Carol_of_the_Shepherds.ly"
\include "unmapped/While_Shepherds_Watched_Their_Flocks-Handel.ly"
\include "unmapped/While_Shepherds_Watched_Their_Flocks-Winchester_Old.ly"
\include "unmapped/The_Wexford_Carol.ly"
\include "unmapped/A_Carol_for_Christmas_Eve.ly"
\include "unmapped/Christians_Awake_Salute_the_Happy_Morn.ly"
\include "unmapped/The_Coventry_Carol-Stainer.ly"
\include "unmapped/The_Coventry_Carol-Shaw.ly"
\include "unmapped/All_my_heart_this_night_rejoices.ly"
\include "unmapped/I_Saw_Three_Ships.ly"
\include "unmapped/The_Seven_Joys_of_Mary.ly"
\include "unmapped/As_With_Gladness_Men_of_Old.ly"
\include "unmapped/Pat-a-Pan.ly"
\include "unmapped/Watchman_Tell_Us_of_the_Night.ly"
\include "unmapped/In_dulci_jubilo-Bach.ly"
\include "unmapped/In_dulci_jubilo.ly"
\include "unmapped/In_dulci_jubilo-Pearsall.ly"
\include "unmapped/Good_Christian_Men_Rejoice.ly"
\include "unmapped/Gloucestershire_Wassail.ly"
\include "unmapped/The_Wassail_Song.ly"
\include "unmapped/From_Heaven_High_I_Come_to_You.ly"
\include "unmapped/The_Boars_Head_Carol.ly"
\include "unmapped/Angels_from_the_Realms_of_Glory.ly"
\include "unmapped/The_Friendly_Beasts.ly"
\include "unmapped/Orientis_Partibus.ly"
\include "unmapped/Although_at_Yule_it_Bloweth_Cool.ly" 
\include "unmapped/O_Holy_Night.ly"
\include "unmapped/Christmas_Day.ly"
\include "unmapped/As_Lately_We_Watched.ly"
\include "unmapped/The_Virgin_and_Child.ly"
\include "unmapped/This_Endris_Night.ly"
\include "unmapped/O_Du_Froehliche.ly"
\include "unmapped/Carol_of_the_Birds.ly"
\include "unmapped/I_Heard_the_Bells_on_Christmas_Day.ly"
\include "unmapped/Congaudeat_turba_fidelium.ly"
\include "unmapped/From_Church_to_Church.ly"
\include "unmapped/Lo_How_a_Rose_Eer_Blooming.ly"
\include "unmapped/Es_ist_ein_Ros_entsprungen.ly"
\include "unmapped/O_Come_Little_Children.ly"
\include "unmapped/Theres_a_Song_in_the_Air.ly"
\include "unmapped/The_Holly_and_the_Ivy-English.ly"
%\include "unmapped/The_Holly_and_the_Ivy-French.ly"
%\include "unmapped/The_Sussex_Carol.ly" % repeats
\include "unmapped/Blessed_be_that_Maid_Marie.ly"
\include "unmapped/Rise_Up_Shepherds_and_Follow.ly"
%\include "unmapped/Sleep_Holy_Babe.ly" % lyric problems
%\include "unmapped/The_Truth_From_Above.ly" % staff strangeness
%\include "unmapped/The_Truth_From_Above-z.ly" % repeats
\include "unmapped/Cradle_Hymn.ly"
\include "unmapped/Glad_Christmas_Bells.ly"
\include "unmapped/The_Golden_Carol.ly"
\include "unmapped/We_Three_Kings_of_Orient_Are.ly"
\include "unmapped/The_Stranger_Star.ly"
\include "unmapped/Carol_of_the_Bells.ly"
\include "unmapped/O_Christmas_Tree.ly"
\include "unmapped/O_Tannenbaum.ly"
\include "unmapped/Deck_the_Hall.ly"
\include "unmapped/We_Wish_You_a_Merry_Christmas.ly"
\include "unmapped/Christmas_Bells.ly"
\include "unmapped/Jingle_Bells.ly"
\include "unmapped/Jolly_Old_Saint_Nicholas.ly"
\include "unmapped/Come_Ye_Lofty.ly"
%\include "unmapped/The_Manger_Throne.ly" % staff strangeness
\include "unmapped/Jesu_hail_O_God_most_holy.ly"
\include "unmapped/Ave_Jesu_Deus.ly"
%\include "unmapped/Corde_Natus.ly" % staff strangeness
%\include "unmapped/Of_the_Fathers_Love_Begotten.ly" % staff strangeness
\include "unmapped/Come_Tune_Your_Heart.ly"
\include "unmapped/Twas_in_the_winter_cold.ly"
\include "unmapped/The_Waits_Song.ly"
%\include "unmapped/The_Incarnation.ly" % repeats
%\include "unmapped/Gods_dear_Son.ly" % repeats
%\include "unmapped/The_Babe_of_Bethlehem.ly" % staff strangeness
\include "unmapped/God_Loved_the_World.ly"
\include "unmapped/How_Great_Our_Joy.ly"
%\include "unmapped/Jesus_in_the_Manger.ly" % bar strangeness
\include "unmapped/From_far_away.ly"
%\include "unmapped/In_Bethlehem_that_noble_place.ly" % repeats
\include "unmapped/Carol_for_Christmas_Day.ly"
\include "unmapped/The_Sans_Day_Carol.ly"
\include "unmapped/Chrystmasse_of_Olde.ly"
%\include "unmapped/Ad_cantus_laetitiae.ly" % strange Latin/English thing
\include "unmapped/Christmas_Time_is_Come_Again.ly"
\include "unmapped/A_Day_a_Day_of_Glory.ly"
\include "unmapped/Earth_Today_Rejoices.ly"
\include "unmapped/Ho_Steward_Bid_My_Servants.ly"
\include "unmapped/Hail_Holy_Child_Lain_in_an_Oxen_Manger.ly"
%\include "unmapped/Make_we_joy_now_in_this_fest.ly" % strange repeats
\include "unmapped/Puer_natus_in_Bethlehem.ly"
\include "unmapped/The_Son_of_God_is_born_for_all.ly"
\include "unmapped/Puer_nobis_nascitur.ly"
\include "unmapped/Unto_us_is_born_a_Son.ly"
\include "unmapped/To_us_is_born_a_little_Child.ly"
\include "unmapped/To_Us_This_Morn_a_Child_is_Born.ly"
\include "unmapped/When_Angelick_Host_Entuned.ly"
\include "unmapped/Twas_in_a_Cave_on_Christmas_Morn.ly"
\include "unmapped/New_Prince_New_Pompe.ly"
\include "unmapped/Quem_Pastores-Lunn.ly"
\include "unmapped/Quem_Pastores-Vaughan_Williams.ly"
\include "unmapped/Christmas_Song.ly"
\include "unmapped/A_Cradle-Song_of_the_Blessed_Virgin.ly"
\include "unmapped/Jacobs_Ladder.ly"
%\include "unmapped/The_Story_of_the_Shepherd.ly" % broken repeats
\include "unmapped/Sweet_was_the_song_the_Virgin_sung.ly"
\include "unmapped/Still_Still_Still.ly"
\include "unmapped/Kling_Gloeckchen.ly"
\include "unmapped/Infant_Holy_Infant_Lowly.ly"
\include "unmapped/Il_est_ne_le_divin_Enfant.ly"
\include "unmapped/Noel_Nouvelet.ly"
\include "unmapped/Fum_Fum_Fum.ly"
\include "unmapped/Hacia_Belen_va_una_burra.ly"
%\include "unmapped/Riu_Riu_Chiu.ly" % lyrics wierd
%\include "unmapped/In_the_Bleak_Midwinter-Darke.ly" % wobbly
%\include "unmapped/In_the_Bleak_Midwinter-Holst.ly" % lyric gunky
%\include "unmapped/Laetentur_Coeli.ly" % repeats
%\include "unmapped/Shiloh.ly" % lyrics and repeats
\include "unmapped/Myn_Lyking.ly"
\include "unmapped/In_Terra_Pax.ly"
\include "unmapped/Milford.ly"
\include "unmapped/A_Christmas_Round.ly"
\include "unmapped/Tollite_Hostias.ly"
%\include "unmapped/Gaudete.ly" % one voice
\include "unmapped/Glorious_Beauteous_Golden-Bright.ly"
\include "unmapped/Alma_Redemptoris_Mater.ly"
\include "unmapped/O_Magnum_Mysterium.ly"
%\include "unmapped/Personent_hodie-Woodward.ly" % bar problems
\include "unmapped/Personent_hodie-Holst.ly"
\include "unmapped/Ring_Out_Wild_Bells-Mendelssohn.ly"
\include "unmapped/Ring_Out_Wild_Bells-Mozart.ly"
\include "unmapped/Auld_Lang_Syne.ly"

%%%%%%%%%%%%%%%%%%%%%%

%\include "unmapped/Conditor_alme_siderum.ly" % bar problems
\include "unmapped/Flos_de_radice_Jesse.ly"


