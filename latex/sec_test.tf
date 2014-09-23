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


%\subsection{Number of Required Filters}\label{sec:filters_test}
%
%While a comprehensive sampling of the SED over all 12 filters ($UBVRI$ or $ugriz$) is ideal, it is often impractical to obtain quality photometry in %this number of bands for every cluster we wish to study. In practice, the \binocs code will have to produce accurate results using a less-than-ideal %number of filters.
%
%During each run of the \binocs code, a model library of all synthetic single and binary stars is generated. If this model library is fed into the %code as an input, it \emph{should} return the exact masses of the original models. Requiring fewer filters to be ``good'' will reduce the mass %accuracy of the \binocs code. By comparing the resulting best-fit masses of each model star to the true values, mass uncertainty can be determined %for each number of required filters.
%
%To aid in the resampling routines of the \binocs code, model stars in the input were given observational uncertainties derived from the cluster's %photometry. Using the cluster's merged datafile, average photometric uncertainties were determined for all available filters, in bins of width 0.5 %mag. Stars in the model library were then assigned magnitude errors equal to 2 $\times$ the uncertainty in the corresponding magnitude bin. To %simulate observed data, the magnitudes were then randomly shifted using a gaussian error distribution with $\sigma =$ the magnitude's uncertainty (2 $%\times$ the original bin average). By overestimating the observational uncertainties for the model stars, the error in mass estimates will be %similarly enhanced, providing generous upper bounds on the mass uncertainty of the observed data.
%
%After randomization, only certain filters were passed through as input to the \binocs fitting. Filter combinations used in this test are shown in the %first column of table \ref{tab:filters_test_M67}. Each filter combination was run 5 times, and each time the \% error in the best-fit primary and %secondary masses was recorded. After all 5 runs, results were binned into steps of 0.1 in mass ratio, and the average \% error + 1 standard deviation %is presented in tables \ref{tab:filters_test_M67} and \ref{tab:filters_test_M37}. This test, like that in \S\ref{sec:iterations_test}, was run on M67 %and M37 datasets. For both clusters, the results were limited to systems where the primary was less massive than 2 M$_\odot$. Above this level, the %massive flux of the primary begins to massively skew secondary mass determinations for small mass-ratios.
%
%\begin{table} \centering \small
%\begin{tabular}{|l|ccccccccccc|c|} \hline
%\multicolumn{1}{|c|}{} & \multicolumn{11}{c}{Mass Ratio} & \multicolumn{1}{c|}{} \\
%\multicolumn{1}{|c|}{Filter Combinations} & 0.0 & 0.1 & 0.2 & 0.3 & 0.4 & 0.5 & 0.6 & 0.7 & 0.8 & 0.9 & \multicolumn{1}{c}{1.0} & 
%	\multicolumn{1}{c|}{\multirow{8}{*}{\vspace{-0.7cm}\begin{turn}{-90}1$\sigma$ \% Error in $M_{\text{pri}}$ \end{turn}}} \\ \hline \hline
%101: $.g......$[3.6]... &   1.0 &   0.0 &   0.2 &   0.5 &   0.8 &   1.2 &   1.6 &   2.0 &   2.0 &   2.3 &   7.6 & \\
%111: $.g...J..$[3.6]... &   0.9 &   0.0 &   0.1 &   0.4 &   0.7 &   1.1 &   1.3 &   1.7 &   1.7 &   2.2 &   7.0 & \\
%202: $.gr.....$[3.6][4.5].. &   0.9 &   0.0 &   0.1 &   0.3 &   0.7 &   1.0 &   1.5 &   1.6 &   1.7 &   2.2 &   6.8 & \\
%211: $.gr..J..$[3.6]... &   0.8 &   0.0 &   0.1 &   0.3 &   0.6 &   0.9 &   1.2 &   1.3 &   1.5 &   2.0 &   5.8 & \\
%222: $.gr..J.K_S$[3.6][4.5].. &   0.8 &   0.0 &   0.1 &   0.3 &   0.5 &   0.7 &   1.2 &   1.3 &   1.5 &   2.2 &   5.5 & \\
%322: $.gri.J.K_S$[3.6][4.5].. &   0.7 &   0.0 &   0.1 &   0.3 &   0.5 &   0.7 &   1.2 &   1.3 &   1.5 &   2.1 &   5.4 & \\
%332: $.gri.JHK_S$[3.6][4.5].. &   0.5 &   0.0 &   0.1 &   0.3 &   0.5 &   0.7 &   1.1 &   1.2 &   1.4 &   2.1 &   5.3 & \\
%532: $ugrizJHK_S$[3.6][4.5].. &   0.3 &   0.0 &   0.1 &   0.2 &   0.3 &   0.5 &   0.9 &   0.9 &   1.2 &   1.7 &   3.2 & 
%	\multirow{8}{*}{\vspace{-0.7cm}\begin{turn}{-90}1$\sigma$ \% Error in $M_{\text{sec}}$ \end{turn}} \\ \hline \hline
%101: $.g......$[3.6]... & ... &  48.7 &  26.2 &  23.5 &  27.1 &  21.6 &  16.1 &  12.1 &   9.7 &  10.8 &  11.8 & \\
%111: $.g...J..$[3.6]... & ... &  31.9 &  21.4 &  20.7 &  23.4 &  19.0 &  13.7 &  10.0 &   8.2 &   9.7 &   9.4 & \\
%202: $.gr.....$[3.6][4.5].. & ... &  35.9 &  20.3 &  17.7 &  20.6 &  16.9 &  12.4 &   8.8 &   6.6 &   7.0 &  11.6 & \\
%211: $.gr..J..$[3.6]... & ... &  33.0 &  20.1 &  19.2 &  20.6 &  16.4 &  11.8 &   8.0 &   6.3 &   7.5 &   7.5 & \\
%222: $.gr..J.K_S$[3.6][4.5].. & ... &  27.9 &  16.0 &  15.3 &  14.8 &  12.5 &   9.3 &   6.4 &   5.1 &   5.9 &   6.9 & \\
%322: $.gri.J.K_S$[3.6][4.5].. & ... &  28.8 &  16.0 &  14.3 &  13.3 &  11.2 &   8.4 &   5.5 &   4.6 &   5.6 &   7.2 & \\
%332: $.gri.JHK_S$[3.6][4.5].. & ... &  27.1 &  15.1 &  12.9 &  11.9 &  10.3 &   7.5 &   5.4 &   4.3 &   5.4 &   7.1 & \\
%532: $ugrizJHK_S$[3.6][4.5].. & ... &  25.4 &  13.2 &  11.8 &   8.7 &   6.0 &   4.6 &   3.2 &   2.7 &   3.5 &   3.6 & \\ \hline
%\end{tabular}
%\caption{1$\sigma$ \% errors in mass estimates for the M67 synthetic dataset, in various combinations of filters. \label{tab:filters_test_M67}}
%\end{table}
%
%\begin{table} \centering \small
%\begin{tabular}{|l|ccccccccccc|c|} \hline
%\multicolumn{1}{|c|}{} & \multicolumn{11}{c}{Mass Ratio} & \multicolumn{1}{c|}{} \\
%\multicolumn{1}{|c|}{Filter Combinations} & 0.0 & 0.1 & 0.2 & 0.3 & 0.4 & 0.5 & 0.6 & 0.7 & 0.8 & 0.9 & \multicolumn{1}{c}{1.0} & 
%	\multicolumn{1}{c|}{\multirow{8}{*}{\vspace{-0.7cm}\begin{turn}{-90}1$\sigma$ \% Error in $M_{\text{pri}}$ \end{turn}}} \\ \hline \hline
%101: $.g......$[3.6]... &   1.1 &   0.2 &   0.3 &   0.7 &   1.3 &   1.9 &   2.6 &   3.1 &   3.6 &   5.3 &   7.9 & \\
%111: $.g...J..$[3.6]... &   1.0 &   0.2 &   0.3 &   0.7 &   1.0 &   1.4 &   1.9 &   2.7 &   2.9 &   4.5 &   7.7 & \\
%202: $.gr.....$[3.6][4.5].. &   1.0 &   0.2 &   0.3 &   0.6 &   0.9 &   1.3 &   1.9 &   2.5 &   3.0 &   4.7 &   7.2 & \\
%211: $.gr..J..$[3.6]... &   0.9 &   0.1 &   0.3 &   0.6 &   0.9 &   1.2 &   1.7 &   2.5 &   2.7 &   4.2 &   7.2 & \\
%222: $.gr..J.K_S$[3.6][4.5].. &   0.8 &   0.2 &   0.2 &   0.5 &   0.7 &   1.0 &   1.5 &   2.1 &   2.4 &   3.8 &   6.3 & \\
%322: $.gri.J.K_S$[3.6][4.5].. &   0.8 &   0.2 &   0.2 &   0.5 &   0.8 &   1.0 &   1.5 &   2.1 &   2.4 &   3.7 &   6.2 & \\
%332: $.gri.JHK_S$[3.6][4.5].. &   0.8 &   0.2 &   0.2 &   0.4 &   0.7 &   1.0 &   1.4 &   2.0 &   2.2 &   3.4 &   6.5 & \\
%532: $ugrizJHK_S$[3.6][4.5].. &   ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... & 
%	\multirow{8}{*}{\vspace{-0.7cm}\begin{turn}{-90}1$\sigma$ \% Error in $M_{\text{sec}}$ \end{turn}} \\ \hline \hline
%101: $.g......$[3.6]... & ... &  67.6 &  51.5 &  35.5 &  27.4 &  21.8 &  18.5 &  14.8 &  11.6 &  12.0 &  13.8 & \\
%111: $.g...J..$[3.6]... & ... &  52.0 &  36.3 &  26.4 &  19.2 &  14.4 &  12.2 &  10.4 &   7.7 &   8.3 &  11.2 & \\
%202: $.gr.....$[3.6][4.5].. & ... &  50.7 &  35.6 &  25.7 &  20.7 &  16.2 &  12.9 &  10.8 &   8.8 &   9.2 &  10.6 & \\
%211: $.gr..J..$[3.6]... & ... &  50.3 &  35.9 &  26.2 &  18.2 &  13.0 &  11.2 &   9.5 &   7.0 &   7.4 &   9.9 & \\
%222: $.gr..J.K_S$[3.6][4.5].. & ... &  35.1 &  24.1 &  17.8 &  14.4 &  10.5 &   8.6 &   7.3 &   5.7 &   6.3 &   8.1 & \\
%322: $.gri.J.K_S$[3.6][4.5].. & ... &  34.7 &  23.5 &  17.6 &  14.2 &  10.3 &   8.1 &   6.9 &   5.5 &   6.0 &   7.4 & \\
%332: $.gri.JHK_S$[3.6][4.5].. & ... &  32.8 &  21.7 &  15.8 &  13.0 &   9.7 &   7.3 &   6.2 &   5.0 &   5.5 &   8.2 & \\
%532: $ugrizJHK_S$[3.6][4.5].. & ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... &   ... & \\ \hline
%\end{tabular}
%\caption{Same as table \ref{tab:filters_test_M67}, but for the M37 dataset. The `532' filter combination does not exist, as only $gri$ optical %photometry is available for M37. \label{tab:filters_test_M37}}
%\end{table}
%
%At first glance, it is obvious that mass estimates are wildly inaccurate for mass ratios less than 0.3. Due to other considerations (described in \S\%ref{sec:minq}), these stars will be removed from the comparison, and so they are ignored in this test as well. There is a large jump in accuracy %between the `211' and `222' filter combinations, more than 5\% for some mass ratios. Using `222,' or a more stringent filter requirement will give %primary masses to better than 10\% and secondary masses to within 20\%. This level of accuracy is acceptable, and allows inclusion of clusters that %do not have full near-IR ($JHK_S$) photometry. Requiring more filters only marginally increases the accuracy (less than 2.5\% in M37), but excludes %more clusters from analysis.
%
%\begin{table} \centering
%\begin{tabular}{|l|cc|} \hline
% & \multicolumn{2}{c|}{\# of Stars} \\
%Cluster & Original Dataset & `222' Trimmed \\ \hline \hline 
%NGC 1960 (M36) & 58,011 & 7,012 \\
%NGC 2168 (M35) & 53,196 & 7,607 \\
%NGC 2099 (M37) & 39,405 & 3,373 \\
%NGC 2420	   & 17,725 & 1,224 \\
%NGC 2682 (M67) & 14,339 & 1,178 \\ \hline
%\end{tabular}
%\parbox{0.75\textwidth}{\caption{Comparison, for clusters in analysis set, of number of stars in original merged datasets to those which have the %requisite photometry. \label{tab:222starcounts}}}
%\end{table}
%
%Original star counts, as well as the number of stars available after the `222' cut are shown for all clusters in the analysis set in table \ref{tab:22%2starcounts}. In many cases, the individual photometry datasets cover different areas around the cluster, only overlapping in smaller regions. These %extra sources, which have photometry from only one source, are removed after the filter cut. This effect is enhanced in M35, M36 and M37, which lie %in the plane of the galaxy. 


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









