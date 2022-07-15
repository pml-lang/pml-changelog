[ch [title Version 3.0.0 2022-xx-xx]

    PMLC 3.0. is a major update.

    The tool has been completely rewritten in Java (PPL is no more used).
    Some features are therefore no more available, some will be added again later.
    
    However, there are only 2 minor changes related to the PML [i syntax]: the [c !] symbol and the [c caption] attribute are no more supported, as explained below.

    Please have a look at the changes described below, before deciding to upgrade to version 3.0.

    [ch [title Backwards-Incompatible Changes]
        [list
            [el
                PMLC's command line interface (CLI) has changed.

                Please refer to the [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] to see an updated list of commands and arguments.

                Most important breaking changes:
                
                [list
                    [el
                        Command [c convert] has been renamed to [c PML_to_HTML] (shortcut [c p2h]), and is used as follows:
                        [input
                            ~~~
                            pmlc PML_to_HTML article.pml
                            or:
                            pmlc p2h article.pml
                            ~~~
                        ]
                    ]

                    [el Commands [c help] and [c tag_info] are not yet implemented.]
                ]
            ]

            [el
                User-defined nodes have been temporarily disabled.

                They will be activated again in a future version. However, the definition of user-defined nodes will probably be significantly different from the first (experimental) implementation.
            ]

            [el
                PMLC's graphical user interface (GUI) is no more supported.
                PMLC can only be used in a terminal.
                The GUI might be supported again in a future version.
            ]

            [el
                The [c !] node name prefix, [xref node_id=v_2_3_0_deprecated text=deprecated] in version 2.3.0, is no more supported.
                For example, instead of writing [c \[!ins-file ...\]] you need to write [c \[u:ins_file ...\]]
            ]

            [el
                The [c caption] [i attribute] for nodes [c image], [c audio], [c video], [c youtube_video] and [c table] is no more supported.
                Please use the [link url=[u:get pml_docs_url]reference_manual/index.html#node_caption text=caption][sp][i node] instead.
            ]

            [el
                Windows/Linux installers are no more supported. They have been replaced by standalone binary executables, as well as Java [c jar] executables that can run on Windows, Linux, and MacOS systems with a JavaRuntime Environment (JRE) installed.
            ]

            [el
                The following two fields have been removed in file [c pml_tags.json] (created by command [c export_tags]): [c default_attribute_id] and [c closing_tag].
                
                Field [c position] has been added for attributes (as a replacement for [c default_attribute_id] and a more versatile field for future improvements).
            ]
        ]
    ]

    [ch [title New Features]
        [list
            [el
                Besides defining options on the command line, they can now also be defined in the PML document, or in a shared options file.
                Please read [link url=[u:get pml_docs_url]user_manual/index.html#options text="Options"] for more information.
            ]

            [el
                The following PMLC commands have been added: [c info, PDML_to_XML, create_standalone, create_commands_manual].
                Please refer to the [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] for more information.
            ]

            [el
                [link url=[u:get pml_docs_url]user_manual/index.html#customized_css text="Customized CSS"] files are now supported.
            ]

            [el
                The location of media assets is no more restricted to specific URLs.
                Any URL that is valid in the browser can be specified.
            ]

            [el
                PMLC is now available as:
                [list
                    [el a single, standalone binary executable for Windows and Linux]
                    [el a single [c zip] or [c tar.gz] file containing Java [c jar] files and an OS script to launch PMLC. This requires a Java runtime version 17 or later to be installed on the PC. Hence, PMLC can now be be executed on Windows, Linux, and MacOS.]
                ]
                [note
                    As stated already, Windows/Linux installers are no more supported.
                ]
            ]

            [el
                There is now an auto-generated [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] describing all PMLC commands.
            ]

            [el
                Semantic node validation is now implemented (but not yet applied to all nodes).
                
                For example, [c list] nodes can only contain [c el] nodes, and each [c el] node must be a child of a [c list] node.
            ]

            [el
                PMLC's source code (a complete rewrite in Java) is now more modular, more efficient, contains many improvements that will be beneficial in the future, and is now much better suited to evolve as an open-source project.
            ]

            [el
                The meaning of the acronym PMLC has been changed from [i PML to HTML Converter] to [i PML Companion].
            ]
        ]
    ]

    [ch [title Bug Fixes]

        All known bugs have been fixed.
    ]
]