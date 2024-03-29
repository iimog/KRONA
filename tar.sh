if [ $# -lt 2 ]
then
	echo "tar.sh <KronaTools_version> <Krona_version>"
	exit
fi

release="KronaTools-$1"
rm -r $release
mv KronaTools $release
tar -cnf $release.tar \
	$release/scripts/ClassifyBLAST.pl \
	$release/scripts/extractTaxonomy.pl \
	$release/scripts/formatEC.pl \
	$release/scripts/GetContigMagnitudes.pl \
	$release/scripts/GetLibPath.pl \
	$release/scripts/GetTaxIDFromGI.pl \
	$release/scripts/ImportBLAST.pl \
	$release/scripts/ImportDiskUsage.pl \
	$release/scripts/ImportEC.pl \
	$release/scripts/ImportFCP.pl \
	$release/scripts/ImportGalaxy.pl \
	$release/scripts/ImportMETAREP-BLAST.pl \
	$release/scripts/ImportMETAREP-EC.pl \
	$release/scripts/ImportMGRAST.pl \
	$release/scripts/ImportPhymmBL.pl \
	$release/scripts/ImportRDP.pl \
	$release/scripts/ImportRDPComparison.pl \
	$release/scripts/ImportTaxonomy.pl \
	$release/scripts/ImportText.pl \
	$release/scripts/ImportXML.pl \
	$release/scripts/indexGIs.pl \
	$release/data/ec.tsv \
	$release/data/README \
	$release/lib/KronaTools.pm \
	$release/src/krona-$2.js \
	$release/img/hidden.png \
	$release/img/hidden.uri \
	$release/img/favicon.ico \
	$release/img/favicon.uri \
	$release/img/loading.gif \
	$release/img/loading.uri \
	$release/img/logo.png \
	$release/img/logo.uri \
	$release/taxonomy \
	$release/install.pl \
	$release/updateTaxonomy.sh \
	$release/deployResources.sh \
	$release/README.txt \
	$release/LICENSE.txt
mv $release KronaTools
