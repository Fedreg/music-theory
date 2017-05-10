# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     MtApi.Repo.insert!(%MtApi.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
# priv/repo/seeds.exs
alias MtApi.Repo
alias MtApi.Chord

Repo.delete_all(Chord)
# Data for generated Chord Charts
# 12 Major Keys
Repo.insert! %Chord{ key: "C",
                     i: "06x353242030121010",
                     ii: "06x05x040232423111",
                     iii: "060152242030020010",
                     iv: "06x06x343232121010",
                     v: "263152040030323413",
                     vi: "06x050242332121010",
                     vii: "06x15224343432301x",
                     i7: "06x353242433121010",
                     iv7: "06x05x142334223414",
                     v7: "363252040030020111",
                     vi7: "06x050242030121010",
                     names: ["C", "Dm", "Em", "F", "G", "Am", "Bdim7", "CM7", "FM7", "G7", "Am7", "5"],
                     bars: ["", "", "", "", "", "", "", "", "3", "", ""]
                }

Repo.insert! %Chord{ key: "G",
                     i: "263152040030323413",
                     ii: "06x050242332121010",
                     iii: "06x152040030323212",
                     iv: "06x253142030323413",
                     v: "06x05x040132323212",
                     vi: "060152242030020010",
                     vii: "b62253344132424112",
                     i7: "363252040030020112",
                     iv7: "06x353242030020010",
                     v7: "06x05x040232121312",
                     vi7: "060152040030323010",
                     names: [ "G", "Am", "Bm", "C9", "D", "Em", "F#dim7", "GM7", "CM7", "D7", "Em7", "0" ],
                     bars: [ "", "", "", "", "", "", "", "", "", "", "" ]
                }

Repo.insert! %Chord{ key: "D",
                     i: "06x05x040132323212",
                     ii: "060152242030020010",
                     iii: "162050040232322010",
                     iv: "263152040030323413",
                     v: "06x050142232322010",
                     vi: "06x152040030323212",
                     vii: "06x152243434323010",
                     i7: "06x05x040132222312",
                     iv7: "363252040030020112",
                     v7: "06x050142030322010",
                     vi7: "06xb52344132223112",
                     names: [ "D", "Em", "F#m", "G", "A", "Bm", "C#dim7", "DM7", "GM7", "A7", "Bm7", "7" ],
                     bars: [ "", "", "", "", "", "", "4", "", "", "", "" ]
                }

Repo.insert! %Chord{ key: "A",
                     i: "06x050142232322010",
                     ii: "06x152040030323212",
                     iii: "06x05x344434223112",
                     iv: "06x05x040132323212",
                     v: "060252342131020010",
                     vi: "162050040232322010",
                     vii: "b62253344132424112",
                     i7: "06x050242131322010",
                     iv7: "06x05x040132222312",
                     v7: "060252040131020010",
                     vi7: "b62354142132122112",
                     names: [ "A", "Bm", "C#m", "D", "E", "F#m", "G#dim7", "AM7", "DM7", "E7", "F#m7", "2" ],
                     bars: [ "", "", "", "", "", "", "4", "", "", "", "", "", "", "" ]
                }

Repo.insert! %Chord{ key: "E",
                    i: "060252342131020010",
                    ii: "162050040232322010",
                    iii: "b62354444132122112",
                    iv: "06x050142232322010",
                    v: "060252141332020412",
                    vi: "06x05x344434223112",
                    vii: "06x05x141332221412",
                    i7: "060352141231020010",
                    iv7: "06x050242131322010",
                    v7: "06x252141332020412",
                    vi7: "06xb52344132223112",
                    names: [ "E", "F#m", "G#m", "A", "B7", "C#m", "D#dim7", "EM7", "AM7", "B7", "C#m7", "9" ],
                    bars: [ "", "", "4", "", "", "4", "", "", "", "", "", "", "", "4" ]
                }

Repo.insert! %Chord{ key: "B",
                    i: "06xb52244334424112",
                    ii: "06xb52344434223112",
                    iii: "06xb52344434223112",
                    iv: "060252342131020010",
                    v: "b62354444233122112",
                    vi: "b62354444132122112",
                    vii: "06x151242030322010",
                    i7: "06xb52344233424112",
                    iv7: "060352141231020010",
                    v7: "b62354142233122112",
                    vi7: "b62354142132122112",
                    names: [ "B", "C#m", "D#m", "E", "F#", "G#m", "A#dim7", "BM7", "EM7", "F#7", "G#m7", "4" ],
                    bars: [ "", "4", "6", "", "", "4", "", "", "", "", "", "", "", "4" ]
                }

Repo.insert! %Chord{ key: "F#",
                    i: "b62354444233122112",
                    ii: "b62354444132122112",
                    iii: "b62354444132122112",
                    iv: "06xb52244334424112",
                    v: "06xb52244334424112",
                    vi: "06xb52344434223112",
                    vii: "06x05x143334223414",
                    i7: "b62354243333122112",
                    iv7: "06xb52344233424112",
                    v7: "06xb52344132424112",
                    vi7: "06xb52344132223112",
                    names: [ "F#", "G#m", "A#m", "B", "C#", "D#m", "E#dim7", "F#M7", "BM7", "C#7", "D#m7", "11" ],
                    bars: [ "", "4", "6", "", "4", "6", "", "", "", "", "", "", "4", "6" ]
                }

Repo.insert! %Chord{ key: "Db",
                    i: "06xb52244334424112",
                    ii: "06xb52344434223112",
                    iii: "b61353443131121111",
                    iv: "b62354444233122112",
                    v: "b62354444233122112",
                    vi: "b62354444132122112",
                    vii: "06x2533441324240x0",
                    i7: "06xb52344233424112",
                    iv7: "b62354243434212112",
                    v7: "b62354142233122112",
                    vi7: "b62354142132122112",
                    names: [ "Db", "Ebm", "Fm", "Gb", "Ab", "Bbm", "Cdim7", "DbM7", "GbM7", "Ab7", "Bbm7", "6" ],
                    bars: [ "4", "6", "", "", "4", "6", "", "", "", "", "4", "", "4", "6" ]
                }

Repo.insert! %Chord{ key: "Ab",
                    i: "b62354444233122112",
                    ii: "b62354444132122112",
                    iii: "06xb52344434223112",
                    iv: "06xb52244334424112",
                    v: "06xb52244334424112",
                    vi: "b61353443131121111",
                    vii: "06x05x142333222413",
                    i7: "b62454243333122112",
                    iv7: "06xb52344233424112",
                    v7: "06xb52344132424112",
                    vi7: "b61353141131121111",
                    names: [ "Ab", "Bbm", "Cm", "Db", "Eb", "Fm", "Gdim7", "AbM7", "DbM7", "Eb7", "Fm7", "1" ],
                    bars: [ "4", "6", "3", "4", "6", "", "5", "", "", "", "", "4", "4", "6", "" ]
                }  

Repo.insert! %Chord{ key: "Eb",
                    i: "06xb52244334424112",
                    ii: "b61353443131121111",
                    iii: "b62354444132122112",
                    iv: "b62354444233122112",
                    v: "b62354444233122112",
                    vi: "06xb52344434223112",
                    vii: "06x2533441324240x0",
                    i7: "06xb52344233424112",
                    iv7: "06xb52344233424112",
                    v7: "b62354142233122112",
                    vi7: "06xb52344132223112",
                    names: [ "Eb", "Fm", "Gm", "Ab", "Bb", "Cm", "Ddim7", "EbM7", "AbM7", "Bb7", "Cm7", "8" ],
                    bars: [ "6", "", "3", "4", "6", "3", "4", "6", "4", "6", "3" ]
                } 

Repo.insert! %Chord{ key: "Bb",
                    i: "06xb51243333423111",
                    ii: "06xb52344434223112",
                    iii: "06xb52344434223112",
                    iv: "06xb52244334424112",
                    v: "b61353443232121111",
                    vi: "b62354444132122112",
                    vii: "06x05x141332221412",
                    i7: "06xb51343232423111",
                    iv7: "06xb52344233424112",
                    v7: "06xb52344132424112",
                    vi7: "b62351424132122112",
                    names: [ "Bb", "Cm", "Dm", "Eb", "F", "Gm", "Adim7", "BbM7", "EbM7", "F7", "Gm7", "3" ],
                    bars: [ "", "3", "5", "6", "", "3", "", "", "", "", "", "", "6", "6", "3" ]
                }   

Repo.insert! %Chord{ key: "F",
                    i: "06x05x343232121111",
                    ii: "b62354444132122112",
                    iii: "06x050242332121010",
                    iv: "06xb51243333423111",
                    v: "06x353242030121010",
                    vi: "06x05x040232423111",
                    vii: "060151242030423010",
                    i7: "06x05x343232121010",
                    iv7: "06xb51343232423111",
                    v7: "06x353242433121010",
                    vi7: "06xb52344132223112",
                    names: [ "F", "Gm", "Am", "Bb", "C", "Dm", "Edim7", "FM7", "BbM7", "C7", "Dm7", "10" ],
                    bars: [ "", "3", "5", "", "", "", "", "", "", "", "", "", "", "5", "" ]
                }

# 12 Minor Keys
Repo.insert! %Chord{ key: "a",
                     i: "06x050242332121010",
                     ii: "06x15224343432301x",
                     iii: "06x353242030121010",
                     iv: "06x05x040232423111",
                     v: "060152242030020010",
                     vi: "06x05x343232121010",
                     vii: "263152040030323413",
                     i7: "06x050242030121010",
                     iv7: "06x05x040332121211",
                     v7: "060252040131423010",
                     vi7: "06x05x343232121010",
                     names: [ "Am", "Bdim7", "C", "Dm", "Em", "F", "G", "Am7", "Dm7", "E7", "FM7", "5" ],
                     bars: [ "", "", "", "", "", "", "", "", "", "", "","","","","" ]
                }

Repo.insert! %Chord{ key: "e",
                    i: "060152242030020010",
                    ii: "b62253344132424112",
                    iii: "263152040030323413",
                    iv: "06x050242332121010",
                    v: "06x152040030323212",
                    vi: "06x353242030121010",
                    vii: "06x05x040132323212",
                    i7: "060152040030423010",
                    iv7: "06x050242030121010",
                    v7: "06x252141332020412",
                    vi7: "06x353242030020010",
                    names: [ "Em", "F#dim7", "G", "Am", "Bm", "C", "D", "Em7", "Am7", "B7", "CM7", "0" ],
                    bars: [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "","","","","" ]
                }
                
Repo.insert! %Chord{ key: "b",
                    i: "06x05x344434223112",
                    ii: "06x253344132424010",
                    iii: "06x05x040132323212",
                    iv: "060152242030020010",
                    v: "162050040232322010",
                    vi: "263152040030323413",
                    vii: "06x050142232322010",
                    i7: "06xb52344132223112",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "Bm", "C#dim7", "D", "Em", "F#m", "G", "A", "7" ],
                    bars: [ "", "3", "", "", "", "", "", "", "", "", "", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "f#",
                    i: "b62354444132122112",
                    ii: "b62253344132424112",
                    iii: "06x050142232322010",
                    iv: "06xb52344434223112",
                    v: "06xb52344434223112",
                    vi: "06x05x040132323212",
                    vii: "060252342131020010",
                    i7: "",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "F#m", "G#dim7", "A", "Bm", "C#m", "D", "E", "2" ],
                    bars: [ "", "4", "", "", "4", "", "", "", "", "", "", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "c#",
                    i: "06xb52344434223112",
                    ii: "06x05x141332221412",
                    iii: "060252342131020010",
                    iv: "b62354444132122112",
                    v: "b62354444132122112",
                    vi: "06x050142232322010",
                    vii: "06xb52244334424112",
                    i7: "06xb52344132223112",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "C#m", "D#dim7", "E", "F#m", "G#m", "A", "B", "9" ],
                    bars: [ "4", "", "", "", "4", "", "", "4", "", "", "", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "g#",
                    i: "b62354444132122112",
                    ii: "06x151242030322010",
                    iii: "06xb52244334424112",
                    iv: "06xb52344434223112",
                    v: "06xb52344434223112",
                    vi: "060252342131020010",
                    vii: "b62354444233122112",
                    i7: "",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "G#m", "A#dim7", "B#", "C#m", "D#m", "E", "F#", "4" ],
                    bars: [ "4", "", "3", "4", "6", "", "", "", "", "", "", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "d#",
                    i: "06xb52344434223112",
                    ii: "06x05x143334223414",
                    iii: "b62354444233122112",
                    iv: "b62354444132122112",
                    v: "b62354444132122112",
                    vi: "06xb52244334424112",
                    vii: "06xb52244334424112",
                    i7: "06xb52344132223112",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "D#m", "E#dim7", "F#", "G#m", "A#m", "B", "C#", "11" ],
                    bars: [ "6", "", "", "4", "6", "", "4", "6", "", "", "", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "bb",
                    i: "b62354444132122112",
                    ii: "06x2533441324240x0",
                    iii: "06x05x040132323212",
                    iv: "06xb52344434223112",
                    v: "06xb52344434223112",
                    vi: "b62354444233122112",
                    vii: "b62354444233122112",
                    i7: "",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "Bbm", "Cdim7", "D", "Ebm", "Fm", "Gb", "Ab", "6" ],
                    bars: [ "6", "", "", "6", "8", "", "4", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "f",
                    i: "b61353443131111111",
                    ii: "06x05x142333222413",
                    iii: "b62354444233122112",
                    iv: "06xb51343433222111",
                    v: "06xb52344434223112",
                    vi: "06xb52244334424112",
                    vii: "06xb52244334424112",
                    i7: "",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "Fm", "Gdim7", "Ab", "Bbm", "Cm", "Db", "Eb", "1" ],
                    bars: [ "", "5", "", "", "3", "4", "6", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "c",
                    i: "06xb52344434223112",
                    ii: "06x2533441324240x0",
                    iii: "06xb52244334424112",
                    iv: "b61353443131121111",
                    v: "b62354444132122112",
                    vi: "b62354444233122112",
                    vii: "06xb51243333423111",
                    i7: "06xb52344132223112",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "Cm", "Ddim7", "Eb", "Fm", "Gm", "Ab", "Bb", "8" ],
                    bars: [ "3", "4", "6", "", "3", "6", "", "3", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "g",
                    i: "b62354444132122112",
                    ii: "06x05x141332221412",
                    iii: "06xb51243333423111",
                    iv: "06xb52344434223112",
                    v: "06x05x040232423111",
                    vi: "06xb52244334424112",
                    vii: "b61353443232121111",
                    i7: "",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "Gm", "Adim7", "Bb", "Cm", "Dm", "Eb", "F", "3" ],
                    bars: [ "3", "", "", "3", "", "6", "", "", "", "", "" ]
                }
                
Repo.insert! %Chord{ key: "d",
                    i: "06x05x040232423111",
                    ii: "060151242030423010",
                    iii: "06x05x343232121010",
                    iv: "b62354444132122112",
                    v: "06x050242332121010",
                    vi: "06xb51243333423111",
                    vii: "06x353242030121010",
                    i7: "",
                    iv7: "",
                    v7: "",
                    vi7: "",
                    names: [ "Dm", "Edim7", "F", "Gm", "Am", "Bb", "C", "10" ],
                    bars: [ "", "", "", "3", "", "", "", "", "", "", "" ]
                }
                
