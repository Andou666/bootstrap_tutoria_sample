module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)
import Bootstrap.CDN as CDN
import Bootstrap.Grid as Grid
import Bootstrap.Grid.Row as Row
import Bootstrap.Grid.Col as Col

main =
    Grid.containerFluid [style "padding" "0"]
        [ CDN.stylesheet
        , div[class "jumbotron",class "text-center", style "margin-bottom" "0"][
            h1[][text "My BootStrap Page"],
            p[][text "this is jumbotron"]
        ]
        -- navbar
        ,nav[class "navbar",class "navbar-expand-sm", class "bg-dark",class "navbar-dark"][
            a[class "navbar-brand"][text "Navbar"],
            button[class "navbar-toggler"][
                span[class "navbar-toggler-icon"][]
            ],
            div[class "collapse", class "navbar-collapse"][
                ul[class "navbar-nav"][
                    li[class "nav-item"][text "link"]
                ]
            ]
        ]
        -- main
        , Grid.container [style "margin-top" "30px"][
            Grid.row []
                        [ Grid.col [Col.sm4][
                                h2[][text "About Me"],
                                h5[][text "Image:"],
                                div[style "height" "200px", style "background" "gray"][
                                    text "image"
                                ],
                                p[][text "text"],
                                h3[][text "links"],
                                p[][text "description"],
                                ul[class "nav flex-colum"][
                                    li[class "nav-item"][
                                        a[class "nav-link"][text "link"]
                                    ]
                                ],
                                hr[][]
                            ],
                          Grid.col [Col.sm8][
                            h2[][text "Title"],
                            h5[][text "title: description"],
                            div[style "height" "200px", style "background" "gray"][
                                    text "image"
                            ],
                            p[][text "text"],
                            p[][text "descrption..."]
                          ]
                        ]
            ]
        -- footer
        ,div[class "jumbotron text-center", style "margin-bottom" "0"][
            p[][text "footer"]
        ]
        ]