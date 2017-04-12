#!groovy

node {

  def err = null
  currentBuild.result = "SUCCESS"

  try { 
    stage 'Checkout'
      checkout scm

    stage 'Validate'
      def packer_file = 'node.json' 
      print "Running packer validate on : ${packer_file}"
      sh "packer validate ${packer_file}"

    stage 'Build'
      sh "packer build node.json" 
  }

  catch (caughtError) {
    err = caughtError
    currentBuild.result = "FAILURE"
  }

  finally {
    /* Must re-throw exception to propagate error */
    if (err) {
      throw err
    }
  }
}
