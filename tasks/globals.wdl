version 1.0

struct GlobalVariables {
  String ubuntu_docker
  String gitc_docker
  String gitc_jar_path
  String conda_docker
  String ug_vc_docker
  String ug_gatk_picard_docker
  String broad_gatk_docker
  String ug_call_variants_docker
  String ug_make_examples_docker
  String perl_docker
  String bcftools_docker
  String monitoring_script
  String ref_cache_script
  String ua_docker
  String trimmer_docker
  String fastqc_docker
  String star_docker
  String sorter_docker
  String ug_control_freec_docker
  String pigz_docker
  String gridss_docker
  String gripss_docker
  String single_cell_qc_docker
  String segdup_docker
  String arriba_docker
  String subread_docker
  String starfusion_docker
  String ugbio_cnv_docker
  String vcflite_docker
  String ugbio_mrd_docker
  String ugbio_featuremap_docker
  String ugbio_srsnv_docker
  String ugbio_ppmseq_docker
}
workflow Globals {
  input {
  GlobalVariables glob ={
        "ubuntu_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/inocras-ug:ubuntu_focal",
        "gitc_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/inocras-ug:genomes-in-the-cloud_2.4.6-1599252698",
        "gitc_jar_path": "/usr/gitc/",
        "conda_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/anaconda3:2019.10",
        "ug_vc_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugvc:0.25_760275b",
        "ug_gatk_picard_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ug_gatk_picard:0.14",
        "broad_gatk_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/gatk:4.6.0.0",
        "ug_call_variants_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/call_variants:2.2.2",
        "ug_make_examples_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/make_examples:2.2.6",
        "perl_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/perl:5.38",
        "bcftools_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/bcftools:1.19",
        "monitoring_script": "s3://ultima-genomics-poc/resources/monitor_1.0.sh",
        "ref_cache_script": "s3://ultima-genomics-poc/resources/seq_cache_populate.pl",
        "ua_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/alignment:1.1.2",
        "trimmer_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/trimmer:2.1.3",
        "fastqc_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/fastqc:0.11.9--0",
        "star_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/star:2.7.10a",
        "sorter_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/sorter:1.2.6",
        "ug_control_freec_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ug_control_freec:26fe532",
        "pigz_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/pigz:latest",
        "gridss_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/gridss:test_f822ea2",
        "gripss_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/gripss:ug_2.4.0_cb91bca",
        "single_cell_qc_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugbio_single_cell:1.3.2",
        "segdup_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/parascopy:1.0_30e2e98",
        "arriba_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/arriba:2.4.0",
        "subread_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/subread:1.0.0-2.0.1-1689097353",
        "starfusion_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/starfusion:1.13.0",
        "ugbio_cnv_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugbio_cnv:1.3.4",
        "vcflite_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugbio_vcflite:1.3.0",
        "ugbio_mrd_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugbio_mrd:1.3.3",
        "ugbio_featuremap_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugbio_featuremap:1.3.0",
        "ugbio_srsnv_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugbio_srsnv:1.3.2",
        "ugbio_ppmseq_docker": "017820703911.dkr.ecr.us-east-1.amazonaws.com/ugbio_ppmseq:1.3.0"
}
}

  output {
    GlobalVariables global_dockers = glob
  }
}