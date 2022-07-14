[ch [title Version 3.0.0 2022-xx-xx]

    PMLC 3.0.0 is a major update.

    The tool has been completely rewritten in Java (PPL is no longer used).
    Some features are therefore no longer available, some will be added again later.
    
    However, there are only 2 minor changes related to the PML [i syntax]: the [c !] symbol and the [c caption] attribute are no longer supported, as explained below.

    Before deciding to upgrade to version 3.0, have a look at the changes described below.

    [ch [title Backwards-Incompatible Changes]
        [list
            [el
                The PMLC command line interface (CLI) has changed.

                Please refer to the [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] to see the updated list of commands and arguments.

                Most important breaking changes:
                
                [list
                    [el
                        The [c convert] command has been renamed to [c PML_to_HTML] (shortcut: [c p2h]) and is used as follows:
                        [input
                            ~~~
                            pmlc PML_to_HTML article.pml
                            or:
                            pmlc p2h article.pml
                            ~~~
                        ]
                    ]

                    [el The [c help] and [c tag_info] commands haven't yet been re-implemented.]
                ]
            ]

            [el
                User-defined nodes have been temporarily disabled.

                They will be reintroduced in a future version.
                Their definition, however, will probably differ significantly from their first (experimental) implementation.
            ]

            [el
                The PMLC GUI (graphical user interface) is no longer supported.
                PMLC is now a command line tool only, to be used in a terminal emulator (shell or CMD).
                The GUI might be reintroduced again in future versions.
            ]

            [el
                The [c !] node-name prefix, [xref node_id=v_2_3_0_deprecated text=deprecated] in version 2.3.0, is no longer supported.
                For example, instead of writing [c \[!ins-file ...\]] you need to write [c \[u:ins_file ...\]].
            ]

            [el
                The [c caption] [i attribute] for nodes [c image], [c audio], [c video], [c youtube_video] and [c table] is no longer supported.
                Please use the new [link url=[u:get pml_docs_url]reference_manual/index.html#node_caption text=caption][sp][i node] instead.
            ]

            [el
                Windows/Linux installers are no longer supported.
                They have been replaced by OS-specific standalone binary executables or, alternatively, a cross-platform Java [c jar] executable that can be run on Windows, Linux, and MacOS systems where the JavaRuntime Environment (JRE) has been installed.
            ]

            [el
                The following two fields have been removed from the [c pml_tags.json] file (created by the [c export_tags] command): [c default_attribute_id] and [c closing_tag].
                
                The [c position] field has been added to attributes as a replacement for [c default_attribute_id], which is more versatile for future improvements.
            ]
        ]
    ]

    [ch [title New Features]
        [list
            [el
                Besides defining options via the command line, now it's also possible to define them inside the PML document, or in a shared options file.
                Please read [link url=[u:get pml_docs_url]user_manual/index.html#options text="Options"] for more information.
            ]

            [el
                The following PMLC commands have been added: [c info], [c PDML_to_XML], [c create_standalone], [c create_commands_manual].
                Please refer to the [link url=[u:get pml_docs_url]commands_manual/index.html text="Commands Reference Manual"] for more information.
            ]

            [el
                [link url=[u:get pml_docs_url]user_manual/index.html#customized_css text="Custom CSS files"] are now supported.
            ]

            [el
                The location of media assets is no longer restricted to specific URLs.
                Any URL that is valid in the browser can now be specified.
            ]

            [el
                PMLC is now available as:
                [list
                    [el A single, standalone binary executable for Windows or Linux.]
                    [el A single [c zip] or [c tar.gz] file containing Java [c jar] files and an OS script to launch PMLC.
                        This requires the Java runtime version 17 or later to be installed on the PC.
                        Hence, PMLC can now be be executed on Windows, Linux, and MacOS.]
                ]
                [note
                    As stated already, Windows/Linux installers are no longer supported.
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
                The PMLC source code (a complete rewrite in Java) is now more modular and efficient, featuring many improvements that will be beneficial in the future, and is now more fit to evolve as an open-source project.
            ]

            [el
                The meaning of the PMLC acronym has been changed from [i PML to HTML Converter] to [i PML Companion].
            ]
        ]
    ]

    [ch [title Bug Fixes]

        All known bugs have been fixed.
    ]
]