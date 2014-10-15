\section{BINOCS Testing}\label{sec:testing}

When the \binocs code was introduced in \S\ref{sec:binocs_code}, several parameters were assumed: the number of iterations of the fitting, the required number of ``good'' filters, and the threshold to consider a magnitude ``good.'' Each of these parameters were tested, and the results are shown below.


\subsection{Number of Iterations}\label{sec:iterations_test}

The \binocs fitting is iterated a number of times to produce best-fit masses and uncertainties. This process has random elements (sampling of gaussian error distribution), and will not necessarily produce the same result every time. However, if there are enough iterations of the fitting, the final results (median) will not vary greatly. Running excess iterations beyond this will use more computing time, but not enhance the results in any meaningful way.

To determine the minimum number of iterations required, the \binocs code with varying numbers of iterations: 3, 10, 30, 90, 150, 200, 300, 400, 500, 600, 700, 1200. For each number of iterations, the \binocs code was run five times. Using these five runs, a ``\% uncertainty'', $\Sigma$, was computed for each star. $\Sigma$ is defined as the standard deviation of all five resulting masses divided by the average of the resulting masses for which the star is classified as a member. $\Sigma$'s for primary and secondary mass determinations are computed independently. Stars that were classified as non-member stars in all five runs (and hence not given any best-fit masses) were removed from the set.

\begin{figure} \centering
\includegraphics[trim = 0mm 65mm 0mm 0mm, clip, width=0.46\textwidth]{../plots/eps/iterations_M67.eps}
\includegraphics[trim = 0mm 65mm 0mm 0mm, clip, width=0.46\textwidth]{../plots/eps/iterations_M37.eps}
\caption{Results of the number of iterations test on M67 and M37. Circles correspond to $\Sigma$'s for primary masses, while squares correspond to secondary mass $\Sigma$'s. Solid lines show median $\Sigma$, dashed lines show 95$^{\text{th}}$ percentile. Grey line denotes average 10\% uncertainty between runs.\label{fig:iterations_test}}
\end{figure}

The M67 and M37 datasets were run through the test, and median and 95$^{\text{th}}$ percentile $\sigma$'s were computed for each number of iterations. Results are plotted in figure \ref{fig:iterations_test}. For primary star masses, there is very little shift between runs ($<3$\%), regardless of the number of iterations completed. For secondary star mass determinations, the median $\Sigma$ is also quite small, staying below 5\% for all iteration values.

In order to ensure that a majority of stellar mass determinations are roughly constant between runs, we require the 95$^{\text{th}}$ percentile $\Sigma$ to be less than 0.1: on average, there will be a less than a 10\% difference in derived stellar masses between runs for 95\% of stars in the dataset. Using 200 iterations of the \binocs fitting will satisfy this requirement (as seen in figure \ref{fig:iterations_test}), and is chosen as the ideal number of iterations in the final computations.


\subsection{Good Filter Threshold}\label{sec:threshold_test}

In addition to generating accurate mass estimates for cluster stars, the \binocs method can mark stars as non-members if they do not have the required number of ``good'' filters for \emph{any} model. Therefore, the threshold which defines whether a filter is ``good'' will adjust the level of field star contamination within the sample. The smaller the threshold, the less contamination from true non-member stars. Conversely, if the threshold is too stringent, many legitimate member stars may be discarded from the sample, due to intrinsic observational uncertainties.

To test for the optimal threshold level, an input catalog was created similarly to that used in \S\ref{sec:filters_test}, keeping magnitudes for $griJHK_S$[3.6][4.5] filters. Then, this input catalog was copied three times: one as an exact copy, one where all magnitudes were shifted down by 0.8 mags, and one where all magnitudes were shifted up by 0.8 mags. The shifted copies symbolize field contamination in front of and behind the cluster (refer to \eqref{eq:MagnitudeDistanceRel} in \S\ref{sec:introAstrophysics}); shifting magnitudes down move stars closer, while shifting magnitudes up move stars further away. The magnitude different between the single-star main sequence and equal-mass binary sequence is 0.753 (from \eqref{eq:binaryMagDiff}), so there should be no natural degeneracies between the three copies of the input library.

The \binocs code was run on this input for various values of the threshold. After the run was complete, two numbers were computed: the percentage of member stars (from the copy of the library at the cluster's distance) that were classified as non-members, and the percentage of non-member stars (from the other two copies of the library) that were classified as members. The best-fit threshold value is chosen such that the sum of these two values is at a minimum.

\begin{figure} \centering
\includegraphics[trim = 3mm 125mm 22mm 0mm, clip, width=0.75\textwidth]{../plots/eps/threshold_M67.eps}
\parbox{0.75\textwidth}{\caption{\% contamination and \% of stars missed in M67 synthetic dataset, for various threshold levels. \label{fig:threshold_test_M67}}}
\end{figure}

The test was run using the M67 synthetic dataset. Results are shown in figure \ref{fig:threshold_test_M67}. The threshold with the minimum total error is 10, which is chosen to be the optimal threshold for science runs.


\subsection{Number of Required Filters}\label{sec:filters_test}

While a comprehensive sampling of the SED over all 12 filters ($UBVRI$ or $ugriz$, $J-$[8.0]) is ideal, it is often impractical to obtain quality photometry in this number of bands for every cluster we wish to study. In practice, the \binocs code will have to produce accurate results using a less-than-ideal number of filters. Requiring fewer filters to be ``good'' will reduce the mass accuracy of the \binocs code. For example, stars being matched to a model using all 12 possible filters should have better accuracy than a model that is only matched using 2 filters. While \binocs mass uncertainty should go down as more filters are required, the number of stars with the required photometry will also drop, limiting the usefulness of the analysis. A balance must be struck between the number of available stars, and the average uncertainty in mass.

To test the mass uncertainty associated with a specific filter combination, the synthetic model library generated by the \binocs code was used as input. With known primary and secondary masses for each entry in the library, mass uncertainties can be easily calculated. To simulate real observation, the model stars in the input library were given observational uncertainties derived from the cluster's photometry. For each available filter in the cluster's photometric catalog, average magnitude uncertainties were calculated in bins of width 0.5 mag. Stars in the input library were then assigned magnitude errors equal to 2 $\times$ the uncertainty in the corresponding magnitude bin. The model stars' magnitudes were also randomly shifted using a gaussian error distribution with $\sigma =$ the magnitude's uncertainty.

By overestimating the observational uncertainties for the model stars, the error in mass estimates will be similarly enhanced, providing generous upper bounds on the mass uncertainty of the observed data. Various filter combinations were tested, and the results are shown in table \ref{tab:filterTest} for several clusters in the sample. The number of stars in each cluster with the required photometry are also shown in table \ref{tab:filterTest}.

\begin{table} \centering \small
\begin{tabular}{|l|ccc|ccc|ccc|} \hline
 & \multicolumn{3}{c|}{\textbf{NGC 2682 (M67)}} & \multicolumn{3}{c|}{\textbf{NGC 2099 (M37)}} & \multicolumn{3}{c|}{\textbf{NGC 1960 (M36)}} \\ \cline{2-10}
 & & \multicolumn{2}{c|}{\% Error} & & \multicolumn{2}{c|}{\% Error} & & \multicolumn{2}{c|}{\% Error} \\
\multicolumn{1}{|c|}{Filter Combinations} & \# Stars & M$_{pri}$ & M$_{sec}$ & \# Stars & M$_{pri}$ & M$_{sec}$ & \# Stars & M$_{pri}$ & M$_{sec}$ \\ \hline \hline
101: $  .g......$[3.6]...     &  2218 &   1.5 &  16.1 &  7018 &   2.0 &  21.2 &  8047 &   1.6 &  38.9 \\
111: $  .g...J..$[3.6]...     &  1319 &   1.3 &  13.7 &  6253 &   1.7 &  16.6 &  8016 &   1.4 &  31.2 \\
202: $  .gr.....$[3.6][4.5].. &  2005 &   1.2 &  12.3 &  3434 &   1.6 &  16.3 &  7064 &   1.9 &  26.4 \\
211: $  .gr..J..$[3.6]...     &  1294 &   1.1 &  12.0 &  6253 &   1.5 &  15.2 &  8016 &   1.5 &  26.8 \\
222: $.gr..J.K_S$[3.6][4.5].. &  1175 &   1.0 &   9.5 &  3373 &   1.3 &  13.5 &  7012 &   2.1 &  17.8 \\
322: $.gri.J.K_S$[3.6][4.5].. &  1123 &   1.0 &   8.5 &  3369 &   1.3 &  13.0 &  6976 &   2.2 &  16.2 \\
332: $.gri.JHK_S$[3.6][4.5].. &  1119 &   0.9 &   8.1 &  3368 &   1.2 &  12.4 &  6912 &   2.3 &  15.2 \\
532: $ugrizJHK_S$[3.6][4.5].. &   730 &   0.7 &   6.1 &   ... &   ... &   ... &   774 &   1.4 &   7.3 \\ \hline
\end{tabular}
\caption{Number of filters test results. For various filter combinations and clusters, the number of stars in the dataset with the necessary photometry are shown, as well as percent errors in derived primary and secondary masses. The `532' filter combination is not possible for M37, as only $gri$ optical photometry is available. \label{tab:filterTest}}
\end{table}

Table \ref{tab:filterTest} illustrates what was stated above: full SED sampling, while producing the lowest mass uncertainties, is not ideal in practice. The `532' filter combination has vastly reduced star counts in M67 and M36, and would complete exclude M37 from the analysis, as only $gri$ optical photometry is available. For less-than-complete filter combinations, there is little difference in the number of stars available for the `332', `322', and `222' filter combinations. The next jump in number of available stars occurs when the number of required near-IR filters drops below two. Along with the increase in the number of available stars for the `211' filter combination, secondary mass uncertainties have risen by 25-75\% above those for the `332' filter combination. 

The vast increase in secondary mass uncertainty eliminates the `211' filter combination, and those with less filters. Since there is no appreciable change in the number of stars available between `222' and `332', the filter combination with the lowest mass uncertainty is selected as the best option. It is therefore required that 3 of 5 optical filters, all 3 near-IR filters, and 2 of the 4 mid-IR filters be matched between an observed star and a model.


\subsection{Minimum Mass Ratio}\label{sec:minq}

It is often impossible to tell the difference between a single star and a low mass-ratio binary, due to the small fractional difference in flux. In order to not overestimate the binary fraction of a cluster, a \emph{minimum mass ratio} is defined, as a function of primary mass. The minimum mass ratio is defined by the maximum of three criteria:

\begin{itemize}
\item \textbf{Lowest mass-ratio model:} For the PARSEC isochrones being used, the isochrone models have a minimum mass of 0.13 M$_\odot$. This is the minimum \emph{possible} mass ratio, which varies inversely with primary mass.
\item \textbf{Synthetic best-fit mass ratio:} After each run of the \binocs code on the cluster dataset, a fit against the full synthetic library is run, similar to that in \S\ref{sec:threshold_test}. Using best-fit mass results of single stars in the synthetic library, an average best-fit mass ratio can be determined, as a function of primary mass.
\item \textbf{Constant threshold:} Upon comparison to published RV studies, \binocs results prove unreliable for stars with mass ratios $< 0.3$ (see \S\ref{sec:rv_comparison}). Even if the synthetic tests estimate a value less than this, the minimum threshold is set to 0.3.
\end{itemize}

Stars which are determined to be binaries with a mass ratio less than this minimum are reclassified as best-fit by a single model. In this case, the best-fit masses from the single-models-only fit (described in \S\ref{sec:binocs_code}) are used.

\begin{figure} \centering
\includegraphics[trim = 3mm 120mm 3mm 0mm, clip, width=0.75\textwidth]{../plots/eps/minq_M37.eps}
\parbox{0.75\textwidth}{\caption{Minimum mass ratio as a function of primary mass for M37. \label{fig:minq_M37}}}
\end{figure}

\begin{figure} \centering
\includegraphics[trim = 3mm 120mm 3mm 0mm, clip, width=0.75\textwidth]{../plots/eps/minq_M67.eps}
\parbox{0.75\textwidth}{\caption{Minimum mass ratio as a function of primary mass for M67. \label{fig:minq_M67}}}
\end{figure}

Minimum mass ratios for M37 and M67 are shown in figures \ref{fig:minq_M37} and \ref{fig:minq_M67}. For low primary mass, the minimum mass ratio tracks closely to the lowest mass ratio model, while the high mass region (1.2 M$_\odot$ for M67 and 2.5 M$_\odot$ for M37) are dominated by degeneracies near the turn-off of the cluster. Inbetween these regions, the minimum mass ratio hovers close to the floor of 0.3.


\subsection{Comparison to RV}\label{sec:rv_comparison}

While internal checks of the \binocs code have been completed, the results must be compared to an outside source for verfication. As mentioned in \S\ref{sec:PastRV}, RV studies are the most detailed way to study binary systems in clusters, and the \binocs code should produce consistent results. A comparison between these RV studies and the clusters' \binocs results are explored in the subsections below.

\subsubsection{Binary Detection}

Two clusters in the analysis set, M67 and M35, have published RV data: \citet{Mathieu:1997tk} and \citet{Geller:2010hn}, respectively. A comparison of binary / single determinations between these RV studies and the \binocs results is shown in figures \ref{fig:rv_M35} and \ref{fig:rv_M67}.

\begin{figure}
	\parbox{0.62\textwidth}{\includegraphics[trim = 3mm 108mm 75mm 0mm, clip, width=0.6\textwidth]{../plots/eps/rv_m35.eps}}
	\parbox{0.3\textwidth}{ \scriptsize
		\begin{tabular}{|c|ccc|} \hline
		 & \multicolumn{3}{c|}{\binocs} \\
		RV & Single & Binary & Non-Member \\ \hline
		\multirow{2}{*}{Single} & \multirow{2}{*}{113} & \multirow{2}{*}{98} & \multirow{2}{*}{40} \\ & & & \\
		\multirow{2}{*}{Binary} & \multirow{2}{*}{8}  & \multirow{2}{*}{31} & \multirow{2}{*}{6} \\ & & & \\ \hline
		\end{tabular}
	}
\caption{\emph{Left:} CMD comparison of RV and \binocs SED-fitting results for M35. Stars considered in comparison are those within dashed line limits. Color of dot indicates which cell of table star belongs to. Black circles indicate RV singles which were marked as \binocs best-fit binaries with mass ratios $< 0.3$. \emph{Right:} Confusion matrix between RV and \binocs results for M35.\label{fig:rv_M35}}
\end{figure}

\begin{figure}
	\parbox{0.62\textwidth}{\includegraphics[trim = 3mm 108mm 75mm 0mm, clip, width=0.6\textwidth]{../plots/eps/rv_m67.eps}}
	\parbox{0.3\textwidth}{ \scriptsize
		\begin{tabular}{|c|ccc|} \hline
		 & \multicolumn{3}{c|}{\binocs} \\
		RV & Single & Binary & Non-Member \\ \hline
		\multirow{2}{*}{Single} & \multirow{2}{*}{88} & \multirow{2}{*}{36} & \multirow{2}{*}{25} \\ & & & \\
		\multirow{2}{*}{Binary} & \multirow{2}{*}{6}  & \multirow{2}{*}{28} & \multirow{2}{*}{14} \\ & & & \\ \hline
		\end{tabular}
	}
\caption{Same as figure \ref{fig:rv_M35}, but for M67. \label{fig:rv_M67}}
\end{figure}

To avoid complications from the turn-off, and poor faint data in the RV studies, the comparison is limited to a specific magnitude range. For M35, stars with $14.2 \le V \le 16.5$ are considered, while stars with $14.2 \le g \le 16.0$ are considered for M67.

The \binocs method detects many RV binaries, with 58\% being detected in M67, and 69\% being detected in M35. The \binocs code shows a lower match when detecting RV singles, with only 45\% and 59\% of RV singles being detected in M35 and M67, respectively. Ths fact there is some mismatch between methods (and more mismatch for RV singles) is, in fact, expected:

\begin{itemize}
\item \textbf{Inclination:} Binary systems can form with any inclination with respect to Earth. For binary systems with a high inclination angle, RV studies will not detect any significant shifts in RV, and therefore classify the system as a single. \textsc{binocs}, on the other hand will have no trouble detecting these types of systems, as the flux increase can be detected regardless of inclination. 

This is most likely the major factor in the mismatch between RV and \binocs results for RV singles. Many of these systems may be binary systems with high inclination, and cannot be expected to be detected using radial velocities.
\item \textbf{Period Length:} Wide binary systems, with their long orbital periods, may not produce enough velocity shift over the lifetime of an RV study, and will therefore be classified as a single. Similar to inclination, this effect does not block the excess flux from the secondary star, and therefore the \binocs code is insensitive.
\item \textbf{Small Secondaries:} The \binocs code requires that there is a significant flux different between a single and binary system. For binaries with a low mass ratio, the flux addition from the secondary star may not be great enough to be picked up by the code. However, depending on inclination, even small secondaries can produce appreciable velocity shifts, and be detected by RV surveys.

This scenario is the converse to the previous two points, and can account for the fact that the \binocs code does not detect all RV binaries.
\end{itemize}

\noindent RV studies and the \binocs code are complementary techniques, but still show a significant amount of agreement between results. This agreement is improved greatly by capping the minimum mass ratio at 0.3. For M67, 48 RV single stars were initially classified as binaries with $0.2 \le q \le 0.3$, which is between the synthetic minimum mass ratio and the hard floor that was introduced. Without this minimum mass ratio floor, \binocs would only detect 27\% of RV single stars in M67.


\subsubsection{Mass Determination}

While not a part of the analysis set due to the lack of deep near-IR photometry, the clusters NGC 188 and NGC 6819 have also been the subject of detailed RV studies \citep[respectively]{2008AJ....135.2264G, 2009AJ....138..159H}. 

Of the 1046 stars studied in NGC 188, 13 were \emph{double-lined} binaries. Further follow-up on these stars, published in \citet{2009AJ....137.3743G}, characterized the orbits of these double-lined binaries, and produced accurate binary mass ratios (see \S\ref{sec:specBinary} and \eqref{eq:massratio}). Similarly, NGC 6819 stars were followed up in \citet{2014AJ....148...38M}, and 15 double-lined binaries were detected. The RV-determined mass ratios are compared to those from \binocs in figures \ref{fig:rv_n188} and \ref{fig:rv_n6819}.

\begin{figure} \centering
\includegraphics[trim = 3mm 125mm 3mm 0mm, clip, width=0.99\textwidth]{../plots/eps/rv_mass_n188.eps}
\caption{\emph{Left:} NGC 188 CMD in $B-V$. Solid line is isochrone used to generate models for \binocs fitting. Dashed line is equal-mass binary sequence. Black circles are double-lined binaries. \emph{Right:} Comparison of RV mass ratios (black) from \citet{2009AJ....137.3743G} to \binocs (grey) for NGC 188 double-lined binaries. \label{fig:rv_n188}}
\end{figure}

\begin{figure} \centering
\includegraphics[trim = 3mm 125mm 3mm 0mm, clip, width=0.99\textwidth]{../plots/eps/rv_mass_n6819.eps}
\caption{Same as figure \ref{fig:rv_n188} for NGC 6819. RV data from \citet{2014AJ....148...38M} \label{fig:rv_n6819}}
\end{figure}

There are several highly discrepant mass ratio determinations in NGC 188 and NGC 6819. Many of these double-lined stars lie near the turn-off of each cluster, where the single star main sequence and equal mass binary sequence overlap (as seen in the left hand panels of figures \ref{fig:rv_n188} and \ref{fig:rv_n6819}). In these regions, there are natural degeneracies, and the \binocs code cannot accurately determine parameters. Stars 4962 and 4986 in NGC 188 and star 37013 lie extremely close to these degeneracies and therefore exhibit large errors with respect to the RV results.

Ignoring those stars very close to the crossing of single star main sequence and equal mass binary sequence, there is close agreement between RV and \binocs mass ratios. Including the quoted uncertainties in mass from \binocs (uncertainties from the RV surveys are negligible), mass ratios largely agree to within 10\%. \\

\noindent Combining this 10\% mass ratio accuracy with the previous conclusion that \binocs results are largely agreeing with RV multiplicity determinations, it is clear that the \binocs code is producing accurate results that can be extrapolated to lower-mass stars.









